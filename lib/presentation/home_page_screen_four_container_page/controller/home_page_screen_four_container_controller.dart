import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container_page/models/home_page_screen_four_container_model.dart';

/// A controller class for the HomePageScreenFourContainerPage.
///
/// This class manages the state of the HomePageScreenFourContainerPage, including the
/// current homePageScreenFourContainerModelObj
class HomePageScreenFourContainerController extends GetxController {
  HomePageScreenFourContainerController(
      this.homePageScreenFourContainerModelObj);

  Rx<HomePageScreenFourContainerModel> homePageScreenFourContainerModelObj;
}
