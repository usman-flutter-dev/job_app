import 'package:get/instance_manager.dart';
import 'package:job_app/mvvm/viewModel/register_controller.dart';

class RegisterBindings implements Bindings {
  @override
  void dependencies() {
    // Register Controller
    Get.lazyPut<RegisterController>(() {
      return RegisterController();
    }, fenix: true);
  }
}
