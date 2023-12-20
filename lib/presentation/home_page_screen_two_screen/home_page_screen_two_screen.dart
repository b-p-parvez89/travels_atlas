import '../home_page_screen_two_screen/widgets/ninetysevensection_item_widget.dart';
import '../home_page_screen_two_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/home_page_screen_two_controller.dart';
import 'models/ninetysevensection_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container_page/home_page_screen_four_container_page.dart';
import 'package:travels_atlase/widgets/custom_bottom_bar.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePageScreenTwoScreen extends GetWidget<HomePageScreenTwoController> {
  const HomePageScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Column(
            children: [
              SizedBox(height: 18.v),
              _buildWelcomeHafsaSection(),
              SizedBox(height: 28.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup85,
                height: 52.v,
                width: 327.h,
              ),
              SizedBox(height: 21.v),
              _buildNinetySevenSection(),
              SizedBox(height: 25.v),
              _buildFrameNinetyOneSection(),
              SizedBox(height: 19.v),
              _buildPopularLocationsSection(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeHafsaSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
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
              SizedBox(height: 3.v),
              Text(
                "msg_let_s_travel_together".tr,
                style: CustomTextStyles.bodySmall_1,
              ),
            ],
          ),
          Container(
            height: 21.v,
            width: 64.h,
            margin: EdgeInsets.only(
              left: 21.h,
              top: 18.v,
              bottom: 18.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSearchOnerror10x10,
              height: 10.adaptSize,
              width: 10.adaptSize,
              alignment: Alignment.bottomRight,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              bottom: 12.v,
            ),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUser,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySevenSection() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 63.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 20.h,
              );
            },
            itemCount: controller.homePageScreenTwoModelObj.value
                .ninetysevensectionItemList.value.length,
            itemBuilder: (context, index) {
              NinetysevensectionItemModel model = controller
                  .homePageScreenTwoModelObj
                  .value
                  .ninetysevensectionItemList
                  .value[index];
              return NinetysevensectionItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyOneSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSort,
            height: 21.v,
            width: 22.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_claim_your".tr,
                        style: CustomTextStyles.labelMediumBlack900,
                      ),
                      TextSpan(
                        text: "msg_20_off_coupon_on".tr,
                        style: CustomTextStyles.labelMediumPrimaryBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "msg_lorem_ipsum_dummy".tr,
                  style: CustomTextStyles.bodySmallErrorContainer8,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_claim".tr,
              style: CustomTextStyles.labelMediumPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularLocationsSection() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "msg_popular_locations".tr,
                style: CustomTextStyles.titleMediumBlack900_1,
              ),
            ),
            SizedBox(height: 7.v),
            SizedBox(
              height: 171.v,
              child: Obx(
                () => ListView.separated(
                  padding: EdgeInsets.only(left: 2.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 10.h,
                    );
                  },
                  itemCount: controller.homePageScreenTwoModelObj.value
                      .viewhierarchyItemList.value.length,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model = controller
                        .homePageScreenTwoModelObj
                        .value
                        .viewhierarchyItemList
                        .value[index];
                    return ViewhierarchyItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection() {
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
