import '../controller/verification_by_number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationByNumberScreen.
///
/// This class ensures that the VerificationByNumberController is created when the
/// VerificationByNumberScreen is first loaded.
class VerificationByNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationByNumberController());
  }
}
