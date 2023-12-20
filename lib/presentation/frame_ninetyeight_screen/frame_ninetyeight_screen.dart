import '../frame_ninetyeight_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/frame_ninetyeight_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_drop_down.dart';
import 'package:travels_atlase/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class FrameNinetyeightScreen extends GetWidget<FrameNinetyeightController> {
  const FrameNinetyeightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 434.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(
                "lbl_hotels_nearby".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 10.v),
              _buildBestHotelRow(),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 106.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_reviews".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: CustomDropDown(
                        width: 67.h,
                        hintText: "lbl_reviews".tr,
                        items: controller.frameNinetyeightModelObj.value
                            .dropdownItemList!.value,
                        onChanged: (value) {
                          controller.onSelected(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              _buildUserProfileList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBestHotelRow() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 279.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle401,
                          height: 57.v,
                          width: 56.h,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_the_best_hotel".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                              SizedBox(height: 3.v),
                              CustomRatingBar(
                                initialRating: 4,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "msg_1000_reviews".tr,
                                style: CustomTextStyles
                                    .poppinsErrorContainerRegular7,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle402,
                          height: 57.v,
                          width: 56.h,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 8.v,
                            bottom: 8.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_the_best_hotel".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                              SizedBox(height: 3.v),
                              CustomRatingBar(
                                initialRating: 4,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "msg_1000_reviews".tr,
                                style: CustomTextStyles
                                    .poppinsErrorContainerRegular7,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle403,
                  height: 57.v,
                  width: 56.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_the_best_hotel".tr,
                        style: theme.textTheme.labelSmall,
                      ),
                      SizedBox(height: 3.v),
                      CustomRatingBar(
                        initialRating: 4,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "msg_1000_reviews".tr,
                        style: CustomTextStyles.poppinsErrorContainerRegular7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 106.h,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller.frameNinetyeightModelObj.value
              .userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = controller.frameNinetyeightModelObj
                .value.userprofilelistItemList.value[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
