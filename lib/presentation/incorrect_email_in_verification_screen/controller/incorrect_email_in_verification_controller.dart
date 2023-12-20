import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/incorrect_email_in_verification_screen/models/incorrect_email_in_verification_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IncorrectEmailInVerificationScreen.
///
/// This class manages the state of the IncorrectEmailInVerificationScreen, including the
/// current incorrectEmailInVerificationModelObj
class IncorrectEmailInVerificationController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<IncorrectEmailInVerificationModel> incorrectEmailInVerificationModelObj =
      IncorrectEmailInVerificationModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
