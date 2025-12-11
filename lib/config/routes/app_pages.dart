import 'package:job_app/app_imports.dart';

class AppPages {
  static const initial = AppRoutes.registerScreen;

  static final routes = [
    // Register Screen
    GetPage(
      name: AppRoutes.registerScreen,
      page: () => const RegisterScreen(),
      binding: AuthBinding(),
    ),

    // Login Screen
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),

    // Jobs Listing Screen
    GetPage(
      name: AppRoutes.jobsList,
      page: () => const JobListingScreen(),
      binding: AuthBinding(),
      // transition: Transition.rightToLeft,
    ),

    // Add Job Screen
    GetPage(
      name: AppRoutes.addJob,
      page: () => const AddJobScreen(),
      binding: AuthBinding(),
      // transition: Transition.upToDown,
    ),

    // You Can Add Mode Pages Below
  ];
}
