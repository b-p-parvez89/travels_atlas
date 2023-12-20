import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/verification_by_number_screen/models/verification_by_number_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationByNumberScreen.
///
/// This class manages the state of the VerificationByNumberScreen, including the
/// current verificationByNumberModelObj
class VerificationByNumberController extends GetxController {
  TextEditingController enterNumberController = TextEditingController();

  Rx<VerificationByNumberModel> verificationByNumberModelObj =
      VerificationByNumberModel().obs;

  @override
  void onClose() {
    super.onClose();
    enterNumberController.dispose();
  }
}
