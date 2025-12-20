import 'package:job_app/app_imports.dart';
import 'package:job_app/mvvm/viewModel/bindings/job_bindings.dart';

class AppPages {
  static const initial = AppRoutes.registerScreen;

  static final routes = [
    GetPage(
      name: AppRoutes.registerScreen,
      page: () => RegisterScreen(),
      bindings: [RegisterBindings(), AuthBindings()],
    ),

    // Login Screen
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBindings(),
      // middlewares: []
    ),

    // Jobs Listing Screen
    GetPage(
      name: AppRoutes.jobsList,
      page: () => JobListingScreen(),
      binding: JobBindings(),
      // transition: Transition.rightToLeft,
    ),

    // Add Job Screen
    GetPage(
      name: AppRoutes.addJob,
      page: () => AddJobScreen(),
      binding: JobBindings(),
      // transition: Transition.upToDown,
    ),

    // You Can Add Mode Pages Below
  ];
}
