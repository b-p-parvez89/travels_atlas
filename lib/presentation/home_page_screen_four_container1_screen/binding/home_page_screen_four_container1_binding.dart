import '../controller/home_page_screen_four_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageScreenFourContainer1Screen.
///
/// This class ensures that the HomePageScreenFourContainer1Controller is created when the
/// HomePageScreenFourContainer1Screen is first loaded.
class HomePageScreenFourContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageScreenFourContainer1Controller());
  }
}
