import '../home_page_screen_four_container_page/widgets/userprofile_item_widget.dart';
import 'controller/home_page_screen_four_container_controller.dart';
import 'models/home_page_screen_four_container_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_trailing_image.dart';
import 'package:travels_atlase/widgets/app_bar/custom_app_bar.dart';

class HomePageScreenFourContainerPage extends StatelessWidget {
  HomePageScreenFourContainerPage({Key? key})
      : super(
          key: key,
        );

  HomePageScreenFourContainerController controller = Get.put(
      HomePageScreenFourContainerController(
          HomePageScreenFourContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 30.v,
            right: 24.h,
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
                  height: 16.v,
                );
              },
              itemCount: controller.homePageScreenFourContainerModelObj.value
                  .userprofileItemList.value.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model = controller
                    .homePageScreenFourContainerModelObj
                    .value
                    .userprofileItemList
                    .value[index];
                return UserprofileItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownPrimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 26.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_saved2".tr,
                style: CustomTextStyles.titleMediumBlack900,
              ),
              TextSpan(
                text: "lbl_locations".tr,
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup118,
          margin: EdgeInsets.fromLTRB(19.h, 12.v, 28.h, 12.v),
        ),
      ],
    );
  }
}
