import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_one_tab_container_screen/models/home_page_screen_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePageScreenOneTabContainerScreen.
///
/// This class manages the state of the HomePageScreenOneTabContainerScreen, including the
/// current homePageScreenOneTabContainerModelObj
class HomePageScreenOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<HomePageScreenOneTabContainerModel> homePageScreenOneTabContainerModelObj =
      HomePageScreenOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
