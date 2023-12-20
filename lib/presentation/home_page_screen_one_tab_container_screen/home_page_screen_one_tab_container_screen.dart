import 'controller/home_page_screen_one_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container_page/home_page_screen_four_container_page.dart';
import 'package:travels_atlase/presentation/home_page_screen_one_page/home_page_screen_one_page.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_subtitle.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:travels_atlase/widgets/app_bar/custom_app_bar.dart';
import 'package:travels_atlase/widgets/custom_bottom_bar.dart';
import 'package:travels_atlase/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePageScreenOneTabContainerScreen
    extends GetWidget<HomePageScreenOneTabContainerController> {
  const HomePageScreenOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildWelcomeHafsa(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup85,
                height: 52.v,
                width: 327.h,
              ),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  right: 23.h,
                ),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_search_your_travel".tr,
                ),
              ),
              SizedBox(height: 13.v),
              _buildTabview(),
              _buildTabBarView(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildWelcomeHafsa() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_welcome".tr,
                      style: CustomTextStyles.headlineSmallBold,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_hafsa".tr,
                      style: CustomTextStyles.headlineSmallPrimary,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 1.v),
            AppbarSubtitle(
              text: "msg_let_s_travel_together".tr,
              margin: EdgeInsets.only(right: 71.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 32.v,
      width: 351.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.errorContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            16.h,
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupWhiteA700,
                    height: 15.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_beach_s".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlineDeepOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupErrorcontainer,
                    height: 15.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_beach_s".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlineDeepOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupErrorcontainer,
                    height: 15.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_beach_s".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlineDeepOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupErrorcontainer,
                    height: 15.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_beach_s".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
      height: 289.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          HomePageScreenOnePage(),
          HomePageScreenOnePage(),
          HomePageScreenOnePage(),
          HomePageScreenOnePage(),
        ],
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

  /// Common widget
  Widget _buildNinetyOne({
    required String userImage,
    required String beachText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 15.v,
            width: 19.h,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              bottom: 2.v,
            ),
            child: Text(
              beachText,
              style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                color: theme.colorScheme.errorContainer,
              ),
            ),
          ),
        ],
      ),
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
