import '../controller/verification_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationMethodScreen.
///
/// This class ensures that the VerificationMethodController is created when the
/// VerificationMethodScreen is first loaded.
class VerificationMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationMethodController());
  }
}
