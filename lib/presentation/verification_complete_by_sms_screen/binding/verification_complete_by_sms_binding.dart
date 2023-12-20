import '../controller/verification_complete_by_sms_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationCompleteBySmsScreen.
///
/// This class ensures that the VerificationCompleteBySmsController is created when the
/// VerificationCompleteBySmsScreen is first loaded.
class VerificationCompleteBySmsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationCompleteBySmsController());
  }
}
