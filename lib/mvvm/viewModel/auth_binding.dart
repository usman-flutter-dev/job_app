import 'package:job_app/app_imports.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    // 1. AppTextFieldController
    Get.lazyPut<AppTextFieldController>(() => AppTextFieldController());

    // 2. Add other controllers required for authentication here
  }
}
