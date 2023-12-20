import 'controller/home_page_screen_one_controller.dart';
import 'models/home_page_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_rating_bar.dart';

class HomePageScreenOnePage extends StatelessWidget {
  HomePageScreenOnePage({Key? key})
      : super(
          key: key,
        );

  HomePageScreenOneController controller =
      Get.put(HomePageScreenOneController(HomePageScreenOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 41.v),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 24.h),
                  child: IntrinsicWidth(
                    child: _buildPopularLocationsHorizontalScroll(),
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
  Widget _buildPopularLocationsHorizontalScroll() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "msg_popular_locations".tr,
            style: CustomTextStyles.titleMediumBlack900_1,
          ),
        ),
        SizedBox(height: 9.v),
        SizedBox(
          height: 171.v,
          width: 351.h,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 171.v,
                  width: 351.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 171.v,
                          width: 154.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.primary,
                              width: 1.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.12),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 171.v,
                          width: 154.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 171.v,
                                  width: 154.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            appTheme.black900.withOpacity(0.12),
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 12.v,
                                    right: 8.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildFavoriteStack(
                                        image: ImageConstant.imgImage14,
                                        favorite: ImageConstant.imgFavorite,
                                      ),
                                      SizedBox(height: 7.v),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_the".tr,
                                              style: CustomTextStyles
                                                  .labelMediumBlack900SemiBold_1,
                                            ),
                                            TextSpan(
                                              text: "lbl_road_to".tr,
                                              style: CustomTextStyles
                                                  .labelMediumBlack900SemiBold_1,
                                            ),
                                            TextSpan(
                                              text: "lbl_mountains".tr,
                                              style: CustomTextStyles
                                                  .labelMediumPrimarySemiBold,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildFavoriteStack(
                                image: ImageConstant.imgImage14107x137,
                                favorite: ImageConstant.imgFavoriteRedA70001,
                              ),
                              SizedBox(height: 7.v),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_the".tr,
                                      style: CustomTextStyles
                                          .labelMediumBlack900SemiBold_1,
                                    ),
                                    TextSpan(
                                      text: "lbl_north_mountains".tr,
                                      style: CustomTextStyles
                                          .labelMediumPrimarySemiBold,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              CustomRatingBar(
                                initialRating: 4,
                                itemSize: 12,
                                itemCount: 10,
                                color: appTheme.yellowA400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 33.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.outlinePrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFavoriteStack(
                        image: ImageConstant.imgImage14,
                        favorite: ImageConstant.imgFavorite,
                      ),
                      SizedBox(height: 7.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_the".tr,
                              style: CustomTextStyles
                                  .labelMediumBlack900SemiBold_1,
                            ),
                            TextSpan(
                              text: "lbl_road_to".tr,
                              style: CustomTextStyles
                                  .labelMediumBlack900SemiBold_1,
                            ),
                            TextSpan(
                              text: "lbl_mountains".tr,
                              style:
                                  CustomTextStyles.labelMediumPrimarySemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5.v),
                      CustomRatingBar(
                        initialRating: 0,
                        itemSize: 12,
                        color: appTheme.yellowA400,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgStar1,
                height: 12.adaptSize,
                width: 12.adaptSize,
                radius: BorderRadius.circular(
                  1.h,
                ),
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 3.h,
                  bottom: 17.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFavoriteStack({
    required String image,
    required String favorite,
  }) {
    return SizedBox(
      height: 107.v,
      width: 137.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: image,
            height: 107.v,
            width: 137.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(8.h),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: favorite,
            height: 8.v,
            width: 10.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 13.v,
              right: 10.h,
            ),
          ),
        ],
      ),
    );
  }
}
