import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:job_app/app_imports.dart';

class AuthController extends GetxController {
  // User is a Class in FirebaseAuth
  // A user account.
  /// authStateChanges() => Notifies about changes to the
  /// user's sign-in state (such as sign-in or sign-out).
  /// AND
  /// A Stream that listens directly to Firebase Authentication.
  Stream<User?> userStream = FirebaseAuth.instance.authStateChanges();

  ///
  Future<void> checkLoginStatusAndRedirect() async {
    // 1. Wait for 2 seconds (optional, but helps see the spinner)
    // await Future.delayed(const Duration(seconds: 2));
    //
    userStream.listen((User? user) {
      if (user == null) {
        Get.offAllNamed(AppRoutes.registerScreen);
      } else {
        Get.offAllNamed(AppRoutes.jobsList);
      }
    });
  }

  // Call this function when the controller is initialized
  /// Called immediately after the widget is allocated in memory.
  /// You might use this to initialize something for the controller.
  @override
  void onInit() {
    super.onInit();
    checkLoginStatusAndRedirect();
  }
}
