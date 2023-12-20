import 'controller/home_page_screen_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container_page/home_page_screen_four_container_page.dart';
import 'package:travels_atlase/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:travels_atlase/widgets/app_bar/custom_app_bar.dart';
import 'package:travels_atlase/widgets/custom_bottom_bar.dart';
import 'package:travels_atlase/widgets/custom_elevated_button.dart';
import 'package:travels_atlase/widgets/custom_outlined_button.dart';
import 'package:travels_atlase/widgets/custom_text_form_field.dart';

class HomePageScreenThreeScreen
    extends GetWidget<HomePageScreenThreeController> {
  const HomePageScreenThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 5.v),
                child: Column(children: [
                  _buildBookingScreen(),
                  SizedBox(height: 30.v),
                  _buildDestination(),
                  SizedBox(height: 24.v),
                  _buildTrain(),
                  SizedBox(height: 24.v),
                  _buildCheckInDate(),
                  SizedBox(height: 24.v),
                  _buildChildrens(),
                  SizedBox(height: 46.v),
                  _buildSearch1(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDownPrimary,
            margin: EdgeInsets.fromLTRB(24.h, 18.v, 331.h, 18.v)));
  }

  /// Section Widget
  Widget _buildBookingScreen() {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_booking2".tr,
                          style:
                              CustomTextStyles.titleMediumBlack900SemiBold_1),
                      TextSpan(
                          text: "lbl_screen".tr,
                          style: CustomTextStyles.titleMediumSemiBold_1)
                    ]),
                    textAlign: TextAlign.left),
                Text("msg_lets_travel_together2".tr,
                    style: CustomTextStyles.labelMediumOnError)
              ]),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup118,
                  height: 32.v,
                  width: 106.h,
                  margin: EdgeInsets.only(top: 4.v, bottom: 6.v))
            ]));
  }

  /// Section Widget
  Widget _buildDestination() {
    return CustomTextFormField(
        controller: controller.destinationController,
        hintText: "lbl_destination".tr,
        hintStyle: CustomTextStyles.bodyMedium13,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 16.v, 22.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLinkedinGray900,
                height: 17.v,
                width: 16.h)),
        suffixConstraints: BoxConstraints(maxHeight: 51.v),
        contentPadding: EdgeInsets.only(left: 15.h, top: 15.v, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.outlineErrorContainer,
        filled: false);
  }

  /// Section Widget
  Widget _buildTrain() {
    return CustomTextFormField(
        controller: controller.trainController,
        hintText: "lbl_train".tr,
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 17.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSave,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 51.v),
        contentPadding: EdgeInsets.only(left: 17.h, top: 16.v, bottom: 16.v),
        borderDecoration: TextFormFieldStyleHelper.outlineErrorContainer,
        filled: false);
  }

  /// Section Widget
  Widget _buildCheckInDate() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(right: 9.h),
          child: _buildCheckOutDate(
              checkOutDate: "lbl_check_in_date".tr,
              onTapCheckOutDate: () {
                onTapFrameTwo();
              })),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: _buildCheckOutDate(
              checkOutDate: "lbl_check_out_date".tr,
              onTapCheckOutDate: () {
                onTapCheckOutDate();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildRooms() {
    return Expanded(
        child: CustomOutlinedButton(
            height: 44.v,
            text: "lbl_children_s".tr,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            buttonStyle: CustomButtonStyles.outlineErrorContainer,
            buttonTextStyle: theme.textTheme.bodySmall!));
  }

  /// Section Widget
  Widget _buildSearch() {
    return Expanded(
        child: CustomOutlinedButton(
            height: 44.v,
            text: "lbl_rooms".tr,
            margin: EdgeInsets.only(left: 10.h),
            buttonStyle: CustomButtonStyles.outlineErrorContainer,
            buttonTextStyle: theme.textTheme.bodySmall!));
  }

  /// Section Widget
  Widget _buildChildrens() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 10.h),
              padding: EdgeInsets.symmetric(vertical: 11.v),
              decoration: AppDecoration.outlineErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_adults".tr, style: theme.textTheme.bodySmall),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRightGray900,
                        height: 10.v,
                        width: 6.h,
                        margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                  ]))),
      _buildRooms(),
      _buildSearch()
    ]);
  }

  /// Section Widget
  Widget _buildSearch1() {
    return CustomElevatedButton(
        height: 54.v,
        text: "lbl_search".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToDeepOrangeDecoration,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildCheckOutDate({
    required String checkOutDate,
    Function? onTapCheckOutDate,
  }) {
    return GestureDetector(
        onTap: () {
          onTapCheckOutDate!.call();
        },
        child: Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
                decoration: AppDecoration.outlineErrorContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(checkOutDate,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: theme.colorScheme.onError)),
                  CustomImageView(
                      imagePath: ImageConstant.imgCalendar,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 8.h))
                ]))));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageScreenFourContainerPage;
      case BottomBarEnum.Booking:
        return "/";
      case BottomBarEnum.Nearby:
        return "/";
      case BottomBarEnum.Saved:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePageScreenFourContainerPage:
        return HomePageScreenFourContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [homePageScreenThreeModelObj] object of the current [checkInDate] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameTwo() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller
            .homePageScreenThreeModelObj.value.selectedCheckInDate!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.homePageScreenThreeModelObj.value.selectedCheckInDate!.value =
          dateTime;
      controller.homePageScreenThreeModelObj.value.checkInDate.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [homePageScreenThreeModelObj] object of the current [checkOutDate] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapCheckOutDate() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller
            .homePageScreenThreeModelObj.value.selectedCheckOutDate!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.homePageScreenThreeModelObj.value.selectedCheckOutDate!.value =
          dateTime;
      controller.homePageScreenThreeModelObj.value.checkOutDate.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }
}
