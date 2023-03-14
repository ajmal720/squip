import 'package:emergency_app/app/app.locator.dart';
import 'package:emergency_app/app/app.router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
// Import the generated file
import 'firebase_options.dart';

void main() async{
  await setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        fontFamily: GoogleFonts.lexendDeca().fontFamily,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute:  StackedRouter().onGenerateRoute,
      
     );
  }
}

