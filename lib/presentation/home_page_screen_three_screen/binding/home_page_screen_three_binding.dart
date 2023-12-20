import '../controller/home_page_screen_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageScreenThreeScreen.
///
/// This class ensures that the HomePageScreenThreeController is created when the
/// HomePageScreenThreeScreen is first loaded.
class HomePageScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageScreenThreeController());
  }
}
