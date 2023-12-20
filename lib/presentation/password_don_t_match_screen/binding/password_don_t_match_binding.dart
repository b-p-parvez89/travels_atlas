import '../controller/password_don_t_match_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordDonTMatchScreen.
///
/// This class ensures that the PasswordDonTMatchController is created when the
/// PasswordDonTMatchScreen is first loaded.
class PasswordDonTMatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordDonTMatchController());
  }
}
