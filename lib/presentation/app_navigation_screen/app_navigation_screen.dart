import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On boarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On boarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On boarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On boarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k5Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.screenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "error".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.errorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "password don\\'t match".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordDonTMatchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "verification method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "verification by email".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationByEmailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "incorrect email in verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.incorrectEmailInVerificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "verification complete by email".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationCompleteByEmailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "verification by number".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationByNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "inorrect number in verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.inorrectNumberInVerificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Number".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "verification complete by sms".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationCompleteBySmsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page screen Four - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageScreenFourContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame NinetySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.frameNinetysevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "home page screen One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageScreenOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page screen Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame NinetyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.frameNinetyeightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page screen Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageScreenFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page screen Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageScreenThreeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
