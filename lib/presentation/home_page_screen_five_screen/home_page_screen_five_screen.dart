import 'controller/home_page_screen_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container_page/home_page_screen_four_container_page.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:travels_atlase/widgets/app_bar/custom_app_bar.dart';
import 'package:travels_atlase/widgets/custom_bottom_bar.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class HomePageScreenFiveScreen extends GetWidget<HomePageScreenFiveController> {
  const HomePageScreenFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 2.v,
          ),
          child: Column(
            children: [
              _buildYourAccount(),
              SizedBox(height: 34.v),
              _buildLock1(),
              SizedBox(height: 13.v),
              Divider(),
              SizedBox(height: 16.v),
              _buildMessages(),
              SizedBox(height: 11.v),
              Divider(),
              SizedBox(height: 15.v),
              _buildLinkedin(),
              SizedBox(height: 11.v),
              Divider(),
              SizedBox(height: 15.v),
              _buildPrivacySupport(),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  right: 11.h,
                ),
                child: _buildLock(
                  lockImage: ImageConstant.imgSearch,
                  contactUsText: "lbl_settings".tr,
                ),
              ),
              SizedBox(height: 11.v),
              Divider(),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  right: 11.h,
                ),
                child: _buildLock(
                  lockImage: ImageConstant.imgLockOnerrorcontainer,
                  contactUsText: "lbl_contact_us".tr,
                ),
              ),
              SizedBox(height: 13.v),
              Divider(),
              SizedBox(height: 35.v),
              CustomElevatedButton(
                height: 54.v,
                text: "lbl_log_out".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientPrimaryToDeepOrangeDecoration,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownPrimary,
        margin: EdgeInsets.fromLTRB(24.h, 18.v, 331.h, 18.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildYourAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_your".tr,
                    style: CustomTextStyles.titleMediumBlack900SemiBold_1,
                  ),
                  TextSpan(
                    text: "lbl_account".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 1.v),
            Text(
              "lbl_search_the_map".tr,
              style: CustomTextStyles.labelMediumOnError,
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgEllipse1642x42,
          height: 42.adaptSize,
          width: 42.adaptSize,
          radius: BorderRadius.circular(
            21.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLock1() {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 15.v,
            width: 12.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: Text(
              "lbl_profile".tr,
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 6.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessages() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomRadioButton(
              text: "lbl_messages".tr,
              value: "lbl_messages".tr,
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 6.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLinkedin() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedinOnerrorcontainer,
            height: 15.v,
            width: 13.h,
            margin: EdgeInsets.only(bottom: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Text(
              "lbl_maps".tr,
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 6.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacySupport() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomRadioButton(
              text: "msg_privacy_support".tr,
              value: "msg_privacy_support".tr,
              groupValue: controller.radioGroup1.value,
              onChange: (value) {
                controller.radioGroup1.value = value;
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 6.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 7.v,
            ),
          ),
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
  Widget _buildLock({
    required String lockImage,
    required String contactUsText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: lockImage,
          height: 12.v,
          width: 15.h,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(
            contactUsText,
            style: CustomTextStyles.bodyMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
        ),
      ],
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
