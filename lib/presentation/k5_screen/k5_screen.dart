import 'controller/k5_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class K5Screen extends GetWidget<K5Controller> {
  const K5Screen({Key? key})
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
            gradient: LinearGradient(
              begin: Alignment(0.47, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary,
                appTheme.whiteA700.withOpacity(0),
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 61.v,
              ),
              decoration: AppDecoration.gradientPrimaryToBluegray100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),
                  CustomElevatedButton(
                    text: "lbl_login".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientPrimaryToDeepOrangeDecoration,
                  ),
                  SizedBox(height: 30.v),
                  CustomOutlinedButton(
                    height: 60.v,
                    text: "lbl_sign_up".tr,
                    buttonStyle: CustomButtonStyles.outlineWhiteATL8,
                    buttonTextStyle: theme.textTheme.titleLarge!,
                  ),
                  SizedBox(height: 34.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_want_to_join_as2".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        TextSpan(
                          text: "lbl_guest".tr,
                          style: CustomTextStyles.titleLargePrimary,
                        ),
                        TextSpan(
                          text: "lbl".tr,
                          style: theme.textTheme.titleLarge,
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
      ),
    );
  }
}
