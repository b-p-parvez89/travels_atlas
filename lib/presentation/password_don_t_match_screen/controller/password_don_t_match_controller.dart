import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/password_don_t_match_screen/models/password_don_t_match_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PasswordDonTMatchScreen.
///
/// This class manages the state of the PasswordDonTMatchScreen, including the
/// current passwordDonTMatchModelObj
class PasswordDonTMatchController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<PasswordDonTMatchModel> passwordDonTMatchModelObj =
      PasswordDonTMatchModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    passwordController1.dispose();
  }
}
