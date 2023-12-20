import '../controller/frame_ninetyseven_controller.dart';
import '../models/playlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget(
    this.playlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistItemModel playlistItemModelObj;

  var controller = Get.find<FrameNinetysevenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 293.v,
      width: 363.h,
      decoration: AppDecoration.fillBlueGray,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: playlistItemModelObj.imageFifteen!.value,
              height: 293.v,
              width: 363.h,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.h, 63.v, 12.h, 198.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Obx(
                      () => CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        child: CustomImageView(
                          imagePath: playlistItemModelObj.arrowDown!.value,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      child: CustomImageView(
                        imagePath: playlistItemModelObj.user!.value,
                      ),
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
