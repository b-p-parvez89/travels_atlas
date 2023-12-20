import '../controller/home_page_screen_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageScreenFiveScreen.
///
/// This class ensures that the HomePageScreenFiveController is created when the
/// HomePageScreenFiveScreen is first loaded.
class HomePageScreenFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageScreenFiveController());
  }
}
