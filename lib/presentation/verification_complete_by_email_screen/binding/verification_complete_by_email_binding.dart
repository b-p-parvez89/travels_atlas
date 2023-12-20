import '../controller/verification_complete_by_email_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationCompleteByEmailScreen.
///
/// This class ensures that the VerificationCompleteByEmailController is created when the
/// VerificationCompleteByEmailScreen is first loaded.
class VerificationCompleteByEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationCompleteByEmailController());
  }
}
