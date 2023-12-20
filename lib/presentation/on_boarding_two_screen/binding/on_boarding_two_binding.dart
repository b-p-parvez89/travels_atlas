import '../controller/on_boarding_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnBoardingTwoScreen.
///
/// This class ensures that the OnBoardingTwoController is created when the
/// OnBoardingTwoScreen is first loaded.
class OnBoardingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingTwoController());
  }
}
