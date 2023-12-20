import '../controller/frame_ninetyeight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FrameNinetyeightScreen.
///
/// This class ensures that the FrameNinetyeightController is created when the
/// FrameNinetyeightScreen is first loaded.
class FrameNinetyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameNinetyeightController());
  }
}
