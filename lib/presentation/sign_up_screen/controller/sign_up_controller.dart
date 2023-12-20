import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController arrowDownRowController = TextEditingController();

  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    arrowDownRowController.dispose();
    userNameEditTextController.dispose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
    confirmPasswordEditTextController.dispose();
  }
}
