import '../controller/inorrect_number_in_verification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InorrectNumberInVerificationScreen.
///
/// This class ensures that the InorrectNumberInVerificationController is created when the
/// InorrectNumberInVerificationScreen is first loaded.
class InorrectNumberInVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InorrectNumberInVerificationController());
  }
}
