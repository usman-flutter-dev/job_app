import 'package:job_app/app_imports.dart';

void main() async {
  // Ensure Flutter binding is initialized
  // Start Flutter Engine
  /// A concrete binding for applications based on the Widgets framework.
  /// This is the glue that binds the framework to the Flutter engine.
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
