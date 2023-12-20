import 'controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnBoardingScreen extends GetWidget<OnBoardingController> {
  const OnBoardingScreen({Key? key})
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
        backgroundColor: appTheme.black90066,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.black90066,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnBoarding,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 43.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomOutlinedButton(
                  width: 68.h,
                  text: "lbl_skip".tr,
                  alignment: Alignment.centerRight,
                ),
                Spacer(
                  flex: 57,
                ),
                SizedBox(
                  height: 232.v,
                  width: 269.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 22.h,
                            vertical: 28.v,
                          ),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 35.v),
                              Text(
                                "msg_let_s_travel_together".tr,
                                style: CustomTextStyles.titleLargeBlack900,
                              ),
                              SizedBox(height: 19.v),
                              Container(
                                width: 201.h,
                                margin: EdgeInsets.only(
                                  left: 11.h,
                                  right: 6.h,
                                ),
                                child: Text(
                                  "msg_lorem_ipsum_dolor".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodySmallPrimaryContainer
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 81.adaptSize,
                          width: 81.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.outlinePrimary1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder40,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup,
                            height: 49.v,
                            width: 47.h,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55.v),
                SizedBox(
                  height: 14.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 4,
                    effect: ScrollingDotsEffect(
                      spacing: 11,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 14.v,
                      dotWidth: 14.h,
                    ),
                  ),
                ),
                Spacer(
                  flex: 42,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
