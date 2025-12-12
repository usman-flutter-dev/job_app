import 'package:job_app/app_imports.dart';

class AuthAllBindings implements Bindings {
  @override
  void dependencies() {
    // AppTextFieldController
    Get.lazyPut<AppTextFieldController>(() => AppTextFieldController());

    // Register Controller
    Get.lazyPut<RegisterController>(() => RegisterController());

    // Login Controller
    Get.lazyPut<LoginController>(() => LoginController());

    // Add other controllers required for authentication here
  }
}
