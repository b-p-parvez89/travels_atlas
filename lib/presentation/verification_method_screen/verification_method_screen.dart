import 'controller/verification_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/core/utils/validation_functions.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';
import 'package:travels_atlase/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class VerificationMethodScreen extends GetWidget<VerificationMethodController> {
  VerificationMethodScreen({Key? key})
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
                ImageConstant.imgVerificationMethod,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 70.v,
                ),
                decoration: AppDecoration.gradientPrimaryToBluegray1002,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 39.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 124.v),
                              child: CustomIconButton(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowDownWhiteA700,
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
                    ),
                    Spacer(),
                    CustomTextFormField(
                      controller: controller.emailController,
                      hintText: "msg_verify_bye_email".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 18.v,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                      text: "lbl_verify_by_sms".tr,
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientPrimaryToDeepOrangeDecoration,
                    ),
                    SizedBox(height: 16.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
