import 'controller/inorrect_number_in_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/core/utils/validation_functions.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';
import 'package:travels_atlase/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InorrectNumberInVerificationScreen
    extends GetWidget<InorrectNumberInVerificationController> {
  InorrectNumberInVerificationScreen({Key? key})
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
                ImageConstant.imgVerificationBy667x375,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 23.h,
                          vertical: 70.v,
                        ),
                        decoration: AppDecoration.gradientPrimaryToDeepOrangeCc,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 39.h,
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
                                        imagePath:
                                            ImageConstant.imgArrowDownWhiteA700,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle134x251,
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
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: CustomTextFormField(
                                controller: controller.enterNumberController,
                                hintText: "msg_enter_your_number".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.number,
                                validator: (value) {
                                  if (!isNumeric(value)) {
                                    return "err_msg_please_enter_valid_number"
                                        .tr;
                                  }
                                  return null;
                                },
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineRedATL82,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
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
                                      "lbl_wrong_number".tr,
                                      style:
                                          CustomTextStyles.bodySmallRedA70001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            CustomElevatedButton(
                              text: "lbl_send".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToDeepOrangeDecoration,
                            ),
                            SizedBox(height: 16.v),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 250.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.46, 1.2),
                            end: Alignment(0.46, -0.32),
                            colors: [
                              appTheme.black900.withOpacity(0.85),
                              appTheme.blueGray100.withOpacity(0),
                            ],
                          ),
                        ),
                      ),
                    ),
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
