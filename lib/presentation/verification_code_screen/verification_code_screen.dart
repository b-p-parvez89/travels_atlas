import 'controller/verification_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:travels_atlase/widgets/app_bar/custom_app_bar.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class VerificationCodeScreen extends GetWidget<VerificationCodeController> {
  const VerificationCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_verification_code".tr,
                style: CustomTextStyles.titleLargePrimary_1,
              ),
              SizedBox(height: 19.v),
              Container(
                width: 259.h,
                margin: EdgeInsets.symmetric(horizontal: 33.h),
                child: Text(
                  "msg_gorem_ipsum_dolor".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBlack900,
                ),
              ),
              SizedBox(height: 45.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 30.h,
                  right: 29.h,
                ),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
                buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                buttonTextStyle: CustomTextStyles.titleLargeGray40002,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "msg_didn_t_receive_code".tr,
                  style: CustomTextStyles.bodySmallErrorContainer8,
                ),
              ),
              SizedBox(height: 14.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTimeClockSvgrepoCom,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_56_06".tr,
                      style: CustomTextStyles.labelMediumBlack900Bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
}
