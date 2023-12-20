import 'controller/error_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/core/utils/validation_functions.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';
import 'package:travels_atlase/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ErrorScreen extends GetWidget<ErrorController> {
  ErrorScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 49.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 21.v),
                        child: CustomIconButton(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1,
                        height: 62.v,
                        width: 117.h,
                        margin: EdgeInsets.only(left: 84.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.v),
                CustomTextFormField(
                  controller: controller.userNameController,
                  hintText: "msg_user_name_or_email".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                ),
                SizedBox(height: 33.v),
                Obx(
                  () => CustomTextFormField(
                    controller: controller.passwordController,
                    hintText: "lbl_enter_password".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(12.h, 23.v, 18.h, 23.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 11.v,
                          width: 18.h,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 60.v,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_password".tr;
                      }
                      return null;
                    },
                    obscureText: controller.isShowPassword.value,
                    contentPadding: EdgeInsets.only(
                      left: 13.h,
                      top: 18.v,
                      bottom: 18.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineRedATL8,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildVideoCameraRow(),
                SizedBox(height: 28.v),
                CustomElevatedButton(
                  text: "lbl_login".tr,
                  buttonStyle: CustomButtonStyles.fillGray,
                ),
                SizedBox(height: 38.v),
                _buildLoginWithRow(),
                SizedBox(height: 28.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcons8Facebook48,
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIcons8Google48,
                      height: 46.adaptSize,
                      width: 46.adaptSize,
                      margin: EdgeInsets.only(left: 36.h),
                    ),
                  ],
                ),
                SizedBox(height: 31.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_have_an_account2".tr,
                        style: CustomTextStyles.bodyMediumGray800,
                      ),
                      TextSpan(
                        text: "lbl_sign_up2".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoCameraRow() {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 17.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    "msg_wrong_email_or_password".tr,
                    style: CustomTextStyles.bodySmallRedA70001,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.v),
            child: Text(
              "msg_forget_password".tr,
              style: CustomTextStyles.bodyMediumGray600,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginWithRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 10.v,
            ),
            child: SizedBox(
              width: 101.h,
              child: Divider(
                color: appTheme.gray200,
              ),
            ),
          ),
          Text(
            "lbl_or_login_with".tr,
            style: CustomTextStyles.bodyMediumGray60014,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 10.v,
            ),
            child: SizedBox(
              width: 101.h,
              child: Divider(
                color: appTheme.gray200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
