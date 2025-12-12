import 'package:job_app/app_imports.dart';

class AppPages {
  static const initial = AppRoutes.registerScreen;

  static final routes = [
    // Register Screen
    GetPage(
      name: AppRoutes.registerScreen,
      page: () => const RegisterScreen(),
      binding: AuthAllBindings(),
    ),

    // Login Screen
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
      binding: AuthAllBindings(),
    ),

    // Jobs Listing Screen
    GetPage(
      name: AppRoutes.jobsList,
      page: () => const JobListingScreen(),
      binding: AuthAllBindings(),
      // transition: Transition.rightToLeft,
    ),

    // Add Job Screen
    GetPage(
      name: AppRoutes.addJob,
      page: () => const AddJobScreen(),
      binding: AuthAllBindings(),
      // transition: Transition.upToDown,
    ),

    // You Can Add Mode Pages Below
  ];
}
