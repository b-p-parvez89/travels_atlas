import '../controller/home_page_screen_two_controller.dart';
import '../models/ninetysevensection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';

// ignore: must_be_immutable
class NinetysevensectionItemWidget extends StatelessWidget {
  NinetysevensectionItemWidget(
    this.ninetysevensectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetysevensectionItemModel ninetysevensectionItemModelObj;

  var controller = Get.find<HomePageScreenTwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Obx(
                () => CustomImageView(
                  imagePath: ninetysevensectionItemModelObj.flightsImage!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  ninetysevensectionItemModelObj.flightsText!.value,
                  style: CustomTextStyles.labelMedium_1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
