import 'package:firebase_core/firebase_core.dart';
import 'package:job_app/app_imports.dart';

void main() async {
  // Ensure Flutter binding is initialized
  // Start Flutter Engine
  WidgetsFlutterBinding.ensureInitialized();
  // Start Firebase Core with the platform-specific options
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
