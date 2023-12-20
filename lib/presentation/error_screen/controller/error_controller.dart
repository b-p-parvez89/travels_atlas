import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/error_screen/models/error_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ErrorScreen.
///
/// This class manages the state of the ErrorScreen, including the
/// current errorModelObj
class ErrorController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<ErrorModel> errorModelObj = ErrorModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
