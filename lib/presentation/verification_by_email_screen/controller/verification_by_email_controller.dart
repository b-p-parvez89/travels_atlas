import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/verification_by_email_screen/models/verification_by_email_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationByEmailScreen.
///
/// This class manages the state of the VerificationByEmailScreen, including the
/// current verificationByEmailModelObj
class VerificationByEmailController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<VerificationByEmailModel> verificationByEmailModelObj =
      VerificationByEmailModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
