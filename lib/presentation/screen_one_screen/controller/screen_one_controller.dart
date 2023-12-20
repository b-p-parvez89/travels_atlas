import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/screen_one_screen/models/screen_one_model.dart';

/// A controller class for the ScreenOneScreen.
///
/// This class manages the state of the ScreenOneScreen, including the
/// current screenOneModelObj
class ScreenOneController extends GetxController {
  Rx<ScreenOneModel> screenOneModelObj = ScreenOneModel().obs;
}
