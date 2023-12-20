import '../controller/home_page_screen_two_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<HomePageScreenTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 154.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 107.v,
            width: 137.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: viewhierarchyItemModelObj.mountainImage!.value,
                    height: 107.v,
                    width: 137.h,
                    radius: BorderRadius.vertical(
                      top: Radius.circular(8.h),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: viewhierarchyItemModelObj.favoriteImage!.value,
                    height: 8.v,
                    width: 10.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 13.v,
                      right: 10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_the".tr,
                  style: CustomTextStyles.labelMediumBlack900SemiBold_1,
                ),
                TextSpan(
                  text: "lbl_north_mountains".tr,
                  style: CustomTextStyles.labelMediumPrimarySemiBold,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 5.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 4,
            itemSize: 12,
          ),
        ],
      ),
    );
  }
}
