import 'controller/home_page_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container_page/home_page_screen_four_container_page.dart';
import 'package:travels_atlase/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends GetWidget<HomePageController> {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 581.v,
          width: double.maxFinite,
          child: GoogleMap(
            //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                37.43296265331129,
                -122.08832357078792,
              ),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false,
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageScreenFourContainerPage;
      case BottomBarEnum.Booking:
        return "/";
      case BottomBarEnum.Nearby:
        return "/";
      case BottomBarEnum.Saved:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePageScreenFourContainerPage:
        return HomePageScreenFourContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
