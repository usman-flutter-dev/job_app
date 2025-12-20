import 'package:firebase_auth/firebase_auth.dart';
import 'package:job_app/app_imports.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  //
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // Login
  Future<void> loginUser() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    // Lets do some Validations like
    // All Fields must not be Empty
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Field Empty',
        'All fields are required!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.red,
        colorText: AppColors.white,
        duration: Duration(seconds: 3),
        borderRadius: 13,
        margin: EdgeInsets.all(10),
      );
      return;
    }
    // Password Length must not be less than 6 Characters
    if (password.length < 6) {
      Get.snackbar(
        'Password',
        'Password should be at least 6 characters!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.red,
        colorText: AppColors.white,
        duration: Duration(seconds: 3),
        borderRadius: 13,
        margin: EdgeInsets.all(10),
      );
      return;
    }
    // Many more Validations we can add below like Above
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Success
      Get.offAllNamed(AppRoutes.jobsList);
    } catch (e) {
      Get.snackbar(
        'Error',
        'An unexpected error occurred: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.red,
        colorText: AppColors.white,
        duration: Duration(seconds: 3),
        borderRadius: 13,
        margin: EdgeInsets.all(10),
      );
    }
  }
}
