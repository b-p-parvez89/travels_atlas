import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/verification_complete_by_email_screen/models/verification_complete_by_email_model.dart';

/// A controller class for the VerificationCompleteByEmailScreen.
///
/// This class manages the state of the VerificationCompleteByEmailScreen, including the
/// current verificationCompleteByEmailModelObj
class VerificationCompleteByEmailController extends GetxController {
  Rx<VerificationCompleteByEmailModel> verificationCompleteByEmailModelObj =
      VerificationCompleteByEmailModel().obs;
}
