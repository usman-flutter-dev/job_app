import 'package:job_app/app_imports.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AppButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.hp(context, 0.07),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // White background color for the button
          backgroundColor: AppColors.white,
          // Sets the corner radius
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // Removes elevation/shadow
          elevation: 0,
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: AppColors.black,
            fontSize: AppResponsive.sp(context, 0.05),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
