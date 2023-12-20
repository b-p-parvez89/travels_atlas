import 'package:travels_atlase/core/app_export.dart';
import 'package:travels_atlase/presentation/on_boarding_three_screen/models/on_boarding_three_model.dart';

/// A controller class for the OnBoardingThreeScreen.
///
/// This class manages the state of the OnBoardingThreeScreen, including the
/// current onBoardingThreeModelObj
class OnBoardingThreeController extends GetxController {
  Rx<OnBoardingThreeModel> onBoardingThreeModelObj = OnBoardingThreeModel().obs;
}
