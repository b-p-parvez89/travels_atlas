import '../controller/home_page_screen_four_container_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';
import 'package:travels_atlase/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomePageScreenFourContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle40,
            height: 57.v,
            width: 56.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                Container(
                  width: 219.h,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          userprofileItemModelObj.northAreaText!.value,
                          style: CustomTextStyles.labelMediumErrorContainer,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRatingBar(
                              ignoreGestures: true,
                              initialRating: 4,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Obx(
                                () => Text(
                                  userprofileItemModelObj.reviewsText!.value,
                                  style: CustomTextStyles
                                      .poppinsErrorContainerRegular5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 222.h,
                  child: Obx(
                    () => Text(
                      userprofileItemModelObj.loremIpsumText!.value,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.poppinsErrorContainerRegular
                          .copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomElevatedButton(
                        height: 14.v,
                        width: 43.h,
                        text: "lbl_book_now".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle: CustomTextStyles.poppinsWhiteA700,
                      ),
                      CustomOutlinedButton(
                        height: 14.v,
                        width: 43.h,
                        text: "lbl_delete".tr,
                        margin: EdgeInsets.only(left: 4.h),
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle: CustomTextStyles.poppinsOnPrimary,
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
}
