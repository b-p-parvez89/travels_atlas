import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/verification_number_screen/models/verification_number_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationNumberScreen.
///
/// This class manages the state of the VerificationNumberScreen, including the
/// current verificationNumberModelObj
class VerificationNumberController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerificationNumberModel> verificationNumberModelObj =
      VerificationNumberModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
