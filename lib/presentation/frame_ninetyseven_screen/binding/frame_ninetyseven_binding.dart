import '../controller/frame_ninetyseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FrameNinetysevenScreen.
///
/// This class ensures that the FrameNinetysevenController is created when the
/// FrameNinetysevenScreen is first loaded.
class FrameNinetysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameNinetysevenController());
  }
}
