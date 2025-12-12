import 'package:job_app/app_imports.dart';
import 'package:job_app/mvvm/viewModel/login_bindings.dart';
import 'package:job_app/mvvm/viewModel/register_bindings.dart';

class AppPages {
  static const initial = AppRoutes.registerScreen;

  static final routes = [
    // Register Screen
    GetPage(
      name: AppRoutes.registerScreen,
      page: () => RegisterScreen(),
      binding: RegisterBindings(),
    ),

    // Login Screen
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),

    // Jobs Listing Screen
    GetPage(
      name: AppRoutes.jobsList,
      page: () => const JobListingScreen(),
      // binding: AuthAllBindings(),
      // transition: Transition.rightToLeft,
    ),

    // Add Job Screen
    GetPage(
      name: AppRoutes.addJob,
      page: () => const AddJobScreen(),
      // binding: AuthAllBindings(),
      // transition: Transition.upToDown,
    ),

    // You Can Add Mode Pages Below
  ];
}
