import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/on_boarding_screen/models/on_boarding_model.dart';

/// A controller class for the OnBoardingScreen.
///
/// This class manages the state of the OnBoardingScreen, including the
/// current onBoardingModelObj
class OnBoardingController extends GetxController {
  Rx<OnBoardingModel> onBoardingModelObj = OnBoardingModel().obs;
}
