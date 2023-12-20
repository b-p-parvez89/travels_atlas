import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_two_screen/models/home_page_screen_two_model.dart';

/// A controller class for the HomePageScreenTwoScreen.
///
/// This class manages the state of the HomePageScreenTwoScreen, including the
/// current homePageScreenTwoModelObj
class HomePageScreenTwoController extends GetxController {
  Rx<HomePageScreenTwoModel> homePageScreenTwoModelObj =
      HomePageScreenTwoModel().obs;
}
