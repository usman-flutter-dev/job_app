import 'package:job_app/app_imports.dart';
import 'package:job_app/mvvm/viewModel/controllers/job_controller.dart';

class JobBindings implements Bindings {
  @override
  void dependencies() {
    // Register Controller
    Get.lazyPut<JobController>(() {
      return JobController();
    }, fenix: true);
  }
}
