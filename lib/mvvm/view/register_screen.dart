import 'package:job_app/app_imports.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      // SafeArea ensures content doesn't overlap status bars, etc.
      body: SafeArea(
        // Use a SingleChildScrollView to prevent overflow when the keyboard appears
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 60, 24, 24), // Main padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Title Section ---
              Text(
                "Let's sign you up",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: AppResponsive.sp(context, 0.1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppResponsive.hp(context, 0.015)),
              Text(
                "Welcome \nJoin the community!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppResponsive.sp(context, 0.09),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppResponsive.hp(context, 0.06)),
              // --- Text Fields ---
              AppTextField(hintText: "Enter your full name"),
              SizedBox(height: AppResponsive.hp(context, 0.02)),
              AppTextField(hintText: "Enter your email address"),
              SizedBox(height: AppResponsive.hp(context, 0.02)),
              // Password field is hidden
              AppTextField(
                textAlignVertical: TextAlignVertical(y: 0.05),
                hintText: "Enter your password",
                obscureText: true,
                suffixIcon: Icon(Icons.remove_red_eye),
              ),

              SizedBox(
                height: AppResponsive.hp(context, 0.15),
              ), // Space before the "Sign In" link
              // --- Already have an account? ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.poppins(
                      color: Colors.white70, // Slightly faded text
                      fontSize: AppResponsive.sp(context, 0.04),
                    ),
                  ),
                  SizedBox(width: AppResponsive.wp(context, 0.01)),
                  // Link text
                  GestureDetector(
                    onTap: () {
                      // Action for Sign In
                      Get.toNamed(AppRoutes.loginScreen);
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        color: Colors.white, // White color for the link
                        fontSize: AppResponsive.sp(context, 0.04),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: AppResponsive.hp(context, 0.02)),
              // --- Sign Up Button ---
              AppButton(
                text: "Sign Up",
                onPressed: () {
                  // Action for Sign Up
                  Get.snackbar(
                    "Sign Up",
                    "Do Validation as Required!",
                    colorText: AppColors.white,
                    duration: Duration(seconds: 5),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
