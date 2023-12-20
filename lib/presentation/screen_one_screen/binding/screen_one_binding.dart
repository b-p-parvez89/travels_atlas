import '../controller/screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScreenOneScreen.
///
/// This class ensures that the ScreenOneController is created when the
/// ScreenOneScreen is first loaded.
class ScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenOneController());
  }
}
