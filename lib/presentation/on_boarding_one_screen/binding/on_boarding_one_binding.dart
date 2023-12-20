import '../controller/on_boarding_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnBoardingOneScreen.
///
/// This class ensures that the OnBoardingOneController is created when the
/// OnBoardingOneScreen is first loaded.
class OnBoardingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingOneController());
  }
}
