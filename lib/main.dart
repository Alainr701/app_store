import 'package:app_store/constants/app_constans.dart';
import 'package:app_store/routes.dart';
import 'package:app_store/ui/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppConstants.primaryColor,
        ),
        scaffoldBackgroundColor: AppConstants.greyBackgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.black,
        ),
      ),
      onGenerateRoute: generateRoute,
      home: const AuthScreen(),
    );
  }
}
