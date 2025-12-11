import 'package:job_app/app_imports.dart';

class AddJobScreen extends StatelessWidget {
  const AddJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // --- Top Section: Header and Input Fields ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  // 1. Header (Back Button and Title)
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                        ),
                        onPressed: () => Get.back(),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Add New Job",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // 2. Position Name Field
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                    child: const AppTextField(hintText: "Enter position name"),
                  ),

                  const SizedBox(height: 16),
                ],
              ),

              Expanded(
                // Use the container to apply the decoration styling
                // that matches the AppTextField component.
                child: Container(
                  // Adds the bottom margin for separation from the button
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: BoxDecoration(
                    color: AppColors.textFieldBackground,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null, // Fills available vertical space
                      expands: true, // Fills the container height
                      style: GoogleFonts.poppins(
                        color: AppColors.white,
                        fontSize: 16,
                      ),
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        hintText: "Describe Requirement...",
                        hintStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 96),

              // --- 4. Submit Button ---
              // Placed at the very bottom of the Column
              Padding(
                // Add bottom padding for the button to lift it slightly from the edge
                padding: const EdgeInsets.only(bottom: 24),
                child: AppButton(
                  text: "Submit Job",
                  onPressed: () {
                    //
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
