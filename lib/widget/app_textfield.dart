import 'package:job_app/app_imports.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextAlignVertical? textAlignVertical;
  final Icon? suffixIcon;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.suffixIcon,
    this.textAlignVertical,
    this.obscureText = false, // Defaults to false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        // Use the centralized color constant
        color: AppColors.textFieldBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: GoogleFonts.poppins(color: AppColors.white, fontSize: 16),
        decoration: InputDecoration(
          hintText: hintText,
          // Hint text color - slightly faded white
          hintStyle: GoogleFonts.poppins(
            color: AppColors.white.withOpacity(0.6),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 12),

          // No suffix icon implementation, keeping it simple as requested
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
