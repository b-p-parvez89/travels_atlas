import 'controller/incorrect_email_in_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/core/utils/validation_functions.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';
import 'package:travels_atlase/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IncorrectEmailInVerificationScreen
    extends GetWidget<IncorrectEmailInVerificationController> {
  IncorrectEmailInVerificationScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgVerificationBy,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Container(
                decoration: AppDecoration.gradientPrimaryToDeepOrangeCc,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 70.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        right: 62.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 124.v),
                            child: CustomIconButton(
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowDownWhiteA700,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle134x251,
                            height: 134.v,
                            width: 251.h,
                            margin: EdgeInsets.only(
                              left: 18.h,
                              top: 10.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    _buildEmailSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.gradientBlackToBlueGray,
      child: Column(
        children: [
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_enter_your_email".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            borderDecoration: TextFormFieldStyleHelper.outlineRedATL8,
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVideoCamera,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_wrong_email".tr,
                      style: CustomTextStyles.bodySmallRedA70001,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            text: "lbl_send".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientPrimaryToDeepOrangeDecoration,
          ),
          SizedBox(height: 78.v),
        ],
      ),
    );
  }
}
