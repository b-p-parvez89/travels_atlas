import '../controller/error_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ErrorScreen.
///
/// This class ensures that the ErrorController is created when the
/// ErrorScreen is first loaded.
class ErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ErrorController());
  }
}
