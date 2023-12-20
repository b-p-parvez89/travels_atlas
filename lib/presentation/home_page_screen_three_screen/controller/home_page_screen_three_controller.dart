import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_three_screen/models/home_page_screen_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePageScreenThreeScreen.
///
/// This class manages the state of the HomePageScreenThreeScreen, including the
/// current homePageScreenThreeModelObj
class HomePageScreenThreeController extends GetxController {
  TextEditingController destinationController = TextEditingController();

  TextEditingController trainController = TextEditingController();

  Rx<HomePageScreenThreeModel> homePageScreenThreeModelObj =
      HomePageScreenThreeModel().obs;

  @override
  void onClose() {
    super.onClose();
    destinationController.dispose();
    trainController.dispose();
  }
}
