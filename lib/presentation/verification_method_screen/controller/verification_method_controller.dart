import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/verification_method_screen/models/verification_method_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationMethodScreen.
///
/// This class manages the state of the VerificationMethodScreen, including the
/// current verificationMethodModelObj
class VerificationMethodController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<VerificationMethodModel> verificationMethodModelObj =
      VerificationMethodModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
