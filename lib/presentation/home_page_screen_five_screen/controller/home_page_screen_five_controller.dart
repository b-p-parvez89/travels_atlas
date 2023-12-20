import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_five_screen/models/home_page_screen_five_model.dart';

/// A controller class for the HomePageScreenFiveScreen.
///
/// This class manages the state of the HomePageScreenFiveScreen, including the
/// current homePageScreenFiveModelObj
class HomePageScreenFiveController extends GetxController {
  Rx<HomePageScreenFiveModel> homePageScreenFiveModelObj =
      HomePageScreenFiveModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
