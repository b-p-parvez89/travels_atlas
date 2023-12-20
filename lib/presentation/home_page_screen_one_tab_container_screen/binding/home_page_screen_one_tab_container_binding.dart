import '../controller/home_page_screen_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageScreenOneTabContainerScreen.
///
/// This class ensures that the HomePageScreenOneTabContainerController is created when the
/// HomePageScreenOneTabContainerScreen is first loaded.
class HomePageScreenOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageScreenOneTabContainerController());
  }
}
