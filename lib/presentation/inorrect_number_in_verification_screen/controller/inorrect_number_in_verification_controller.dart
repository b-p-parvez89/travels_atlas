import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/inorrect_number_in_verification_screen/models/inorrect_number_in_verification_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InorrectNumberInVerificationScreen.
///
/// This class manages the state of the InorrectNumberInVerificationScreen, including the
/// current inorrectNumberInVerificationModelObj
class InorrectNumberInVerificationController extends GetxController {
  TextEditingController enterNumberController = TextEditingController();

  Rx<InorrectNumberInVerificationModel> inorrectNumberInVerificationModelObj =
      InorrectNumberInVerificationModel().obs;

  @override
  void onClose() {
    super.onClose();
    enterNumberController.dispose();
  }
}
