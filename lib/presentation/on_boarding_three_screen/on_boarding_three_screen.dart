import 'controller/on_boarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnBoardingThreeScreen extends GetWidget<OnBoardingThreeController> {
  const OnBoardingThreeScreen({Key? key})
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
                ImageConstant.imgOnBoardingThree,
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomOutlinedButton(
                  width: 68.h,
                  text: "lbl_skip".tr,
                ),
                Spacer(
                  flex: 57,
                ),
                _buildOnBoardingThree(),
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

  /// Section Widget
  Widget _buildOnBoardingThree() {
    return Padding(
      padding: EdgeInsets.only(left: 33.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      vertical: 30.v,
                    ),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 33.v),
                        Text(
                          "msg_let_s_travel_together".tr,
                          style: CustomTextStyles.titleLargeBlack900,
                        ),
                        SizedBox(height: 19.v),
                        Container(
                          width: 202.h,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 5.h,
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dolor".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallPrimaryContainer
                                .copyWith(
                              decoration: TextDecoration.underline,
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
                    padding: EdgeInsets.all(16.h),
                    decoration: AppDecoration.outlinePrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 42.v,
                      width: 44.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 55.v),
          Container(
            height: 14.v,
            margin: EdgeInsets.only(left: 90.h),
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
        ],
      ),
    );
  }
}
