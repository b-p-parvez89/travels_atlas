import 'controller/verification_complete_by_sms_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:travels_atlase/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class VerificationCompleteBySmsScreen
    extends GetWidget<VerificationCompleteBySmsController> {
  const VerificationCompleteBySmsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgVerificationComplete,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              decoration: AppDecoration.gradientPrimaryToDeeporange200cc,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  _buildAppBar(),
                  _buildSeventyFive(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 257.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownWhiteA700,
        margin: EdgeInsets.fromLTRB(24.h, 70.v, 331.h, 167.v),
      ),
      styleType: Style.bgGradientnameprimaryopacity08namedeeporange200cc,
    );
  }

  /// Section Widget
  Widget _buildSeventyFive() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 34.h,
          top: 230.v,
          right: 34.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_number_verified".tr,
              style: CustomTextStyles.titleLargePrimary_1,
            ),
            SizedBox(height: 21.v),
            SizedBox(
              width: 257.h,
              child: Text(
                "msg_borem_ipsum_dolor".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
