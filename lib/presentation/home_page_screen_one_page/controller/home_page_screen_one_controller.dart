import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_one_page/models/home_page_screen_one_model.dart';

/// A controller class for the HomePageScreenOnePage.
///
/// This class manages the state of the HomePageScreenOnePage, including the
/// current homePageScreenOneModelObj
class HomePageScreenOneController extends GetxController {
  HomePageScreenOneController(this.homePageScreenOneModelObj);

  Rx<HomePageScreenOneModel> homePageScreenOneModelObj;
}
