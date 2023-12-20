import '../controller/on_boarding_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnBoardingThreeScreen.
///
/// This class ensures that the OnBoardingThreeController is created when the
/// OnBoardingThreeScreen is first loaded.
class OnBoardingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingThreeController());
  }
}
