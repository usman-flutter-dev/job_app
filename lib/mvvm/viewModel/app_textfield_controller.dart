import 'package:job_app/app_imports.dart';

class AppTextFieldController extends GetxController {
  // This observable variable tracks the visibility state.
  // It is initialized to true (obscured) for password fields.
  var isTextObscured = true.obs;

  // Method to toggle the state.
  void toggleObscureText() {
    isTextObscured.value = !isTextObscured.value;
  }
}
