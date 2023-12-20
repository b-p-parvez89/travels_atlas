import 'controller/on_boarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnBoardingOneScreen extends GetWidget<OnBoardingOneController> {
  const OnBoardingOneScreen({Key? key})
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
        backgroundColor: appTheme.black90066.withOpacity(0.3),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.black90066.withOpacity(0.3),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnBoardingOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 450.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildSkipButton(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
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
                                  decoration:
                                      AppDecoration.outlinePrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 35.v),
                                      Text(
                                        "msg_let_s_travel_together".tr,
                                        style:
                                            CustomTextStyles.titleLargeBlack900,
                                      ),
                                      SizedBox(height: 19.v),
                                      SizedBox(
                                        width: 201.h,
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
                                    horizontal: 15.h,
                                    vertical: 14.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder40,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgUpload,
                                    height: 47.v,
                                    width: 44.h,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
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
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkipButton() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 43.v,
        ),
        decoration: AppDecoration.gradientPrimaryToBlueGray,
        child: CustomOutlinedButton(
          width: 68.h,
          text: "lbl_skip".tr,
        ),
      ),
    );
  }
}
