import 'package:travels_atlase/presentation/splash_screen/splash_screen.dart';
import 'package:travels_atlase/presentation/splash_screen/binding/splash_binding.dart';
import 'package:travels_atlase/presentation/on_boarding_two_screen/on_boarding_two_screen.dart';
import 'package:travels_atlase/presentation/on_boarding_two_screen/binding/on_boarding_two_binding.dart';
import 'package:travels_atlase/presentation/on_boarding_one_screen/on_boarding_one_screen.dart';
import 'package:travels_atlase/presentation/on_boarding_one_screen/binding/on_boarding_one_binding.dart';
import 'package:travels_atlase/presentation/on_boarding_screen/on_boarding_screen.dart';
import 'package:travels_atlase/presentation/on_boarding_screen/binding/on_boarding_binding.dart';
import 'package:travels_atlase/presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import 'package:travels_atlase/presentation/on_boarding_three_screen/binding/on_boarding_three_binding.dart';
import 'package:travels_atlase/presentation/k5_screen/k5_screen.dart';
import 'package:travels_atlase/presentation/k5_screen/binding/k5_binding.dart';
import 'package:travels_atlase/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:travels_atlase/presentation/screen_one_screen/binding/screen_one_binding.dart';
import 'package:travels_atlase/presentation/login_screen/login_screen.dart';
import 'package:travels_atlase/presentation/login_screen/binding/login_binding.dart';
import 'package:travels_atlase/presentation/error_screen/error_screen.dart';
import 'package:travels_atlase/presentation/error_screen/binding/error_binding.dart';
import 'package:travels_atlase/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:travels_atlase/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:travels_atlase/presentation/password_don_t_match_screen/password_don_t_match_screen.dart';
import 'package:travels_atlase/presentation/password_don_t_match_screen/binding/password_don_t_match_binding.dart';
import 'package:travels_atlase/presentation/verification_method_screen/verification_method_screen.dart';
import 'package:travels_atlase/presentation/verification_method_screen/binding/verification_method_binding.dart';
import 'package:travels_atlase/presentation/verification_by_email_screen/verification_by_email_screen.dart';
import 'package:travels_atlase/presentation/verification_by_email_screen/binding/verification_by_email_binding.dart';
import 'package:travels_atlase/presentation/incorrect_email_in_verification_screen/incorrect_email_in_verification_screen.dart';
import 'package:travels_atlase/presentation/incorrect_email_in_verification_screen/binding/incorrect_email_in_verification_binding.dart';
import 'package:travels_atlase/presentation/verification_complete_by_email_screen/verification_complete_by_email_screen.dart';
import 'package:travels_atlase/presentation/verification_complete_by_email_screen/binding/verification_complete_by_email_binding.dart';
import 'package:travels_atlase/presentation/verification_by_number_screen/verification_by_number_screen.dart';
import 'package:travels_atlase/presentation/verification_by_number_screen/binding/verification_by_number_binding.dart';
import 'package:travels_atlase/presentation/inorrect_number_in_verification_screen/inorrect_number_in_verification_screen.dart';
import 'package:travels_atlase/presentation/inorrect_number_in_verification_screen/binding/inorrect_number_in_verification_binding.dart';
import 'package:travels_atlase/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:travels_atlase/presentation/verification_code_screen/binding/verification_code_binding.dart';
import 'package:travels_atlase/presentation/verification_number_screen/verification_number_screen.dart';
import 'package:travels_atlase/presentation/verification_number_screen/binding/verification_number_binding.dart';
import 'package:travels_atlase/presentation/verification_complete_by_sms_screen/verification_complete_by_sms_screen.dart';
import 'package:travels_atlase/presentation/verification_complete_by_sms_screen/binding/verification_complete_by_sms_binding.dart';
import 'package:travels_atlase/presentation/home_page_screen/home_page_screen.dart';
import 'package:travels_atlase/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container1_screen/home_page_screen_four_container1_screen.dart';
import 'package:travels_atlase/presentation/home_page_screen_four_container1_screen/binding/home_page_screen_four_container1_binding.dart';
import 'package:travels_atlase/presentation/frame_ninetyseven_screen/frame_ninetyseven_screen.dart';
import 'package:travels_atlase/presentation/frame_ninetyseven_screen/binding/frame_ninetyseven_binding.dart';
import 'package:travels_atlase/presentation/home_page_screen_one_tab_container_screen/home_page_screen_one_tab_container_screen.dart';
import 'package:travels_atlase/presentation/home_page_screen_one_tab_container_screen/binding/home_page_screen_one_tab_container_binding.dart';
import 'package:travels_atlase/presentation/home_page_screen_two_screen/home_page_screen_two_screen.dart';
import 'package:travels_atlase/presentation/home_page_screen_two_screen/binding/home_page_screen_two_binding.dart';
import 'package:travels_atlase/presentation/frame_ninetyeight_screen/frame_ninetyeight_screen.dart';
import 'package:travels_atlase/presentation/frame_ninetyeight_screen/binding/frame_ninetyeight_binding.dart';
import 'package:travels_atlase/presentation/home_page_screen_five_screen/home_page_screen_five_screen.dart';
import 'package:travels_atlase/presentation/home_page_screen_five_screen/binding/home_page_screen_five_binding.dart';
import 'package:travels_atlase/presentation/home_page_screen_three_screen/home_page_screen_three_screen.dart';
import 'package:travels_atlase/presentation/home_page_screen_three_screen/binding/home_page_screen_three_binding.dart';
import 'package:travels_atlase/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:travels_atlase/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onBoardingTwoScreen = '/on_boarding_two_screen';

  static const String onBoardingOneScreen = '/on_boarding_one_screen';

  static const String onBoardingScreen = '/on_boarding_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String k5Screen = '/k5_screen';

  static const String screenOneScreen = '/screen_one_screen';

  static const String loginScreen = '/login_screen';

  static const String errorScreen = '/error_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String passwordDonTMatchScreen = '/password_don_t_match_screen';

  static const String verificationMethodScreen = '/verification_method_screen';

  static const String verificationByEmailScreen =
      '/verification_by_email_screen';

  static const String incorrectEmailInVerificationScreen =
      '/incorrect_email_in_verification_screen';

  static const String verificationCompleteByEmailScreen =
      '/verification_complete_by_email_screen';

  static const String verificationByNumberScreen =
      '/verification_by_number_screen';

  static const String inorrectNumberInVerificationScreen =
      '/inorrect_number_in_verification_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String verificationNumberScreen = '/verification_number_screen';

  static const String verificationCompleteBySmsScreen =
      '/verification_complete_by_sms_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String homePageScreenFourContainerPage =
      '/home_page_screen_four_container_page';

  static const String homePageScreenFourContainer1Screen =
      '/home_page_screen_four_container1_screen';

  static const String frameNinetysevenScreen = '/frame_ninetyseven_screen';

  static const String homePageScreenOnePage = '/home_page_screen_one_page';

  static const String homePageScreenOneTabContainerScreen =
      '/home_page_screen_one_tab_container_screen';

  static const String homePageScreenTwoScreen = '/home_page_screen_two_screen';

  static const String frameNinetyeightScreen = '/frame_ninetyeight_screen';

  static const String homePageScreenFiveScreen =
      '/home_page_screen_five_screen';

  static const String homePageScreenThreeScreen =
      '/home_page_screen_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingTwoScreen,
      page: () => OnBoardingTwoScreen(),
      bindings: [
        OnBoardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onBoardingOneScreen,
      page: () => OnBoardingOneScreen(),
      bindings: [
        OnBoardingOneBinding(),
      ],
    ),
    GetPage(
      name: onBoardingScreen,
      page: () => OnBoardingScreen(),
      bindings: [
        OnBoardingBinding(),
      ],
    ),
    GetPage(
      name: onBoardingThreeScreen,
      page: () => OnBoardingThreeScreen(),
      bindings: [
        OnBoardingThreeBinding(),
      ],
    ),
    GetPage(
      name: k5Screen,
      page: () => K5Screen(),
      bindings: [
        K5Binding(),
      ],
    ),
    GetPage(
      name: screenOneScreen,
      page: () => ScreenOneScreen(),
      bindings: [
        ScreenOneBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: errorScreen,
      page: () => ErrorScreen(),
      bindings: [
        ErrorBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: passwordDonTMatchScreen,
      page: () => PasswordDonTMatchScreen(),
      bindings: [
        PasswordDonTMatchBinding(),
      ],
    ),
    GetPage(
      name: verificationMethodScreen,
      page: () => VerificationMethodScreen(),
      bindings: [
        VerificationMethodBinding(),
      ],
    ),
    GetPage(
      name: verificationByEmailScreen,
      page: () => VerificationByEmailScreen(),
      bindings: [
        VerificationByEmailBinding(),
      ],
    ),
    GetPage(
      name: incorrectEmailInVerificationScreen,
      page: () => IncorrectEmailInVerificationScreen(),
      bindings: [
        IncorrectEmailInVerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationCompleteByEmailScreen,
      page: () => VerificationCompleteByEmailScreen(),
      bindings: [
        VerificationCompleteByEmailBinding(),
      ],
    ),
    GetPage(
      name: verificationByNumberScreen,
      page: () => VerificationByNumberScreen(),
      bindings: [
        VerificationByNumberBinding(),
      ],
    ),
    GetPage(
      name: inorrectNumberInVerificationScreen,
      page: () => InorrectNumberInVerificationScreen(),
      bindings: [
        InorrectNumberInVerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => VerificationCodeScreen(),
      bindings: [
        VerificationCodeBinding(),
      ],
    ),
    GetPage(
      name: verificationNumberScreen,
      page: () => VerificationNumberScreen(),
      bindings: [
        VerificationNumberBinding(),
      ],
    ),
    GetPage(
      name: verificationCompleteBySmsScreen,
      page: () => VerificationCompleteBySmsScreen(),
      bindings: [
        VerificationCompleteBySmsBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: homePageScreenFourContainer1Screen,
      page: () => HomePageScreenFourContainer1Screen(),
      bindings: [
        HomePageScreenFourContainer1Binding(),
      ],
    ),
    GetPage(
      name: frameNinetysevenScreen,
      page: () => FrameNinetysevenScreen(),
      bindings: [
        FrameNinetysevenBinding(),
      ],
    ),
    GetPage(
      name: homePageScreenOneTabContainerScreen,
      page: () => HomePageScreenOneTabContainerScreen(),
      bindings: [
        HomePageScreenOneTabContainerBinding(),
      ],
    ),
    GetPage(
      name: homePageScreenTwoScreen,
      page: () => HomePageScreenTwoScreen(),
      bindings: [
        HomePageScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: frameNinetyeightScreen,
      page: () => FrameNinetyeightScreen(),
      bindings: [
        FrameNinetyeightBinding(),
      ],
    ),
    GetPage(
      name: homePageScreenFiveScreen,
      page: () => HomePageScreenFiveScreen(),
      bindings: [
        HomePageScreenFiveBinding(),
      ],
    ),
    GetPage(
      name: homePageScreenThreeScreen,
      page: () => HomePageScreenThreeScreen(),
      bindings: [
        HomePageScreenThreeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnBoardingTwoScreen(),
      bindings: [
        OnBoardingTwoBinding(),
      ],
    )
  ];
}
