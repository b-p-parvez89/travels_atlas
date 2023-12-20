import '../frame_ninetyseven_screen/widgets/playlist_item_widget.dart';
import 'controller/frame_ninetyseven_controller.dart';
import 'models/playlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';
import 'package:travels_atlase/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class FrameNinetysevenScreen extends GetWidget<FrameNinetysevenController> {
  const FrameNinetysevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 387.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildPlaylist(),
              SizedBox(height: 17.v),
              _buildClientTestimonials(),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 47.h),
                  child: Row(
                    children: [
                      CustomRatingBar(
                        initialRating: 4,
                        itemSize: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 2.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "msg_1000_reviews".tr,
                          style: CustomTextStyles.poppinsErrorContainerRegular7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Container(
                width: 327.h,
                margin: EdgeInsets.only(
                  left: 48.h,
                  right: 12.h,
                ),
                child: Text(
                  "msg_porem_ipsum_dolor".tr,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: CustomTextStyles.bodySmallErrorContainer9,
                ),
              ),
              SizedBox(height: 22.v),
              CustomOutlinedButton(
                height: 54.v,
                text: "lbl_view_deals".tr,
                margin: EdgeInsets.only(
                  left: 47.h,
                  right: 12.h,
                ),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 6.v),
              CustomElevatedButton(
                height: 54.v,
                text: "lbl_book_now".tr,
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 18.h,
                ),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientPrimaryToDeepOrangeDecoration,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 10.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist() {
    return SizedBox(
      height: 293.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: controller
              .frameNinetysevenModelObj.value.playlistItemList.value.length,
          itemBuilder: (context, index) {
            PlaylistItemModel model = controller
                .frameNinetysevenModelObj.value.playlistItemList.value[index];
            return PlaylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials() {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_the_north_mountains".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_north_pakistan".tr,
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
          Container(
            width: 89.h,
            margin: EdgeInsets.only(
              left: 45.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 10.v,
                  width: 8.h,
                  margin: EdgeInsets.only(top: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_50_km".tr,
                          style: CustomTextStyles.labelSmallPrimary,
                        ),
                        TextSpan(
                          text: "lbl_from_here".tr,
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
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
