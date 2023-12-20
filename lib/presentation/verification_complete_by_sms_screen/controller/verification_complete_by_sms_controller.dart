import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/verification_complete_by_sms_screen/models/verification_complete_by_sms_model.dart';

/// A controller class for the VerificationCompleteBySmsScreen.
///
/// This class manages the state of the VerificationCompleteBySmsScreen, including the
/// current verificationCompleteBySmsModelObj
class VerificationCompleteBySmsController extends GetxController {
  Rx<VerificationCompleteBySmsModel> verificationCompleteBySmsModelObj =
      VerificationCompleteBySmsModel().obs;
}
