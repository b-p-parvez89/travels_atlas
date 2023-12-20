import '../controller/frame_ninetyeight_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<FrameNinetyeightController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Column(
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userprofilelistItemModelObj.userImage!.value,
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    userprofilelistItemModelObj.userName!.value,
                    style: CustomTextStyles.labelSmall8,
                  ),
                ),
                Obx(
                  () => Text(
                    userprofilelistItemModelObj.userLocation!.value,
                    style: CustomTextStyles.poppinsOnErrorRegular,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                top: 6.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 40.v,
                    ),
                    child: Obx(
                      () => Text(
                        userprofilelistItemModelObj.text!.value,
                        style: CustomTextStyles.labelMediumBlack900Bold_1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(
                                ignoreGestures: true,
                                initialRating: 4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFavoriteErrorcontainer,
                                    height: 7.v,
                                    width: 8.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Obx(
                                      () => Text(
                                        userprofilelistItemModelObj
                                            .favoriteCount!.value,
                                        style: CustomTextStyles
                                            .poppinsErrorContainer,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 222.h,
                          child: Obx(
                            () => Text(
                              userprofilelistItemModelObj
                                  .userDescription!.value,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: CustomTextStyles
                                  .poppinsErrorContainerRegular
                                  .copyWith(
                                height: 1.45,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 76.h),
                            child: Obx(
                              () => Text(
                                userprofilelistItemModelObj.quote!.value,
                                style:
                                    CustomTextStyles.labelMediumBlack900Bold_1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Obx(
                              () => Text(
                                userprofilelistItemModelObj.postedTime!.value,
                                style: CustomTextStyles
                                    .poppinsErrorContainerRegular4,
                              ),
                            ),
                          ),
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
    );
  }
}
