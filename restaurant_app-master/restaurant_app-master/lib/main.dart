import 'package:flutter/material.dart';
import 'package:food_craft/home.dart';
import 'package:food_craft/themes/theme_colors.dart';
import 'package:firebase_core/firebase_core.dart';


import 'constants/app_colors.dart';
// import 'pages/home_page.dart';
import 'themes/theme_input.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeColors.colorScheme,
        inputDecorationTheme: ThemeInput.inputDecoration,
        scaffoldBackgroundColor: AppColors.bg,
        shadowColor: AppColors.primary,
        errorColor: AppColors.error,
      ),
      home: const Home(),
    );
  }
}

