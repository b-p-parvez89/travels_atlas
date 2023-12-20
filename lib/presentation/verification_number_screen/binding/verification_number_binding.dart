import '../controller/verification_number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationNumberScreen.
///
/// This class ensures that the VerificationNumberController is created when the
/// VerificationNumberScreen is first loaded.
class VerificationNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationNumberController());
  }
}
