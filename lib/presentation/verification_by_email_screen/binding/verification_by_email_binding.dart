import '../controller/verification_by_email_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationByEmailScreen.
///
/// This class ensures that the VerificationByEmailController is created when the
/// VerificationByEmailScreen is first loaded.
class VerificationByEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationByEmailController());
  }
}
