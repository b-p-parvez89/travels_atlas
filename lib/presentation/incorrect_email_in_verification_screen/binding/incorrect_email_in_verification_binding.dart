import '../controller/incorrect_email_in_verification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IncorrectEmailInVerificationScreen.
///
/// This class ensures that the IncorrectEmailInVerificationController is created when the
/// IncorrectEmailInVerificationScreen is first loaded.
class IncorrectEmailInVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncorrectEmailInVerificationController());
  }
}
