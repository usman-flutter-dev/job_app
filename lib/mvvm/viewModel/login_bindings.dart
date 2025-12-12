import 'package:job_app/app_imports.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    // Register Controller
    Get.lazyPut<LoginController>(() {
      return LoginController();
    }, fenix: true);
  }
}
