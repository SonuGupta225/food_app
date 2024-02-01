import 'package:flutter/material.dart';
import 'package:food_app/constats/colors.dart';
import 'package:food_app/constats/constants.dart';
import 'package:food_app/dashboard/splash_screen.dart';
import 'package:food_app/dashboard/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: MyColors.navy,
            brightness: Brightness.light,
            scaffoldBackgroundColor: Color(0xfffcfcfc),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: .2,
                titleTextStyle:
                    TextStyle(fontFamily: Bold, color: Color(0xff323232)),
                iconTheme: IconThemeData(color: MyColors.primaryColor))),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: MyColors.navy,
            scaffoldBackgroundColor: Color(0xfffcfcfc),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: .2,
                titleTextStyle:
                    TextStyle(fontFamily: Bold, color: Color(0xff323232)),
                iconTheme: IconThemeData(color: MyColors.primaryColor))),
        home: SplashScreen()
        // WelcomeScreen(),
        //* Hii Friends
        );
  }
}
