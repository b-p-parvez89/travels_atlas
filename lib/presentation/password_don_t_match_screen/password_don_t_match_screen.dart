import 'controller/password_don_t_match_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/core/utils/validation_functions.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';
import 'package:travels_atlase/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordDonTMatchScreen extends GetWidget<PasswordDonTMatchController> {
  PasswordDonTMatchScreen({Key? key})
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
                            imagePath: ImageConstant.imgArrowDown,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1,
                        height: 62.v,
                        width: 117.h,
                        margin: EdgeInsets.only(left: 85.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                _buildUserName(),
                SizedBox(height: 17.v),
                _buildEmail(),
                SizedBox(height: 17.v),
                _buildPassword(),
                SizedBox(height: 17.v),
                _buildConfirmpassword(),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_the_password_you".tr,
                    style: CustomTextStyles.bodySmallRedA70001,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildPassword1(),
                SizedBox(height: 18.v),
                _buildSignUp(),
                SizedBox(height: 20.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: CustomTextStyles.bodyMediumGray800,
                      ),
                      TextSpan(
                        text: "lbl_sign_in".tr,
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
  Widget _buildUserName() {
    return CustomTextFormField(
      controller: controller.userNameController,
      hintText: "lbl_user_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "lbl_email".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_enter_password".tr,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
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
          if (value == null || (!isValidPassword(value, isRequired: true))) {
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
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.confirmpasswordController,
        hintText: "msg_confirm_password".tr,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword1.value =
                !controller.isShowPassword1.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 23.v, 18.h, 23.v),
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
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword1.value,
        contentPadding: EdgeInsets.only(
          left: 13.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword1() {
    return CustomTextFormField(
      controller: controller.passwordController1,
      hintText: "lbl_phone_number".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToDeepOrangeDecoration,
    );
  }
}
