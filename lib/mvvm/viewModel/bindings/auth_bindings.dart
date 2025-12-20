import 'package:job_app/app_imports.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    // Register Controller
    Get.lazyPut<AuthController>(() {
      return AuthController();
    }, fenix: true);
  }
}
