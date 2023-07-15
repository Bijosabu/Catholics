import 'package:catholicsapp/constants/constants.dart';
import 'package:catholicsapp/presentation/HomeScreen/home_page.dart';
import 'package:catholicsapp/presentation/LoginPage/login_screen.dart';
import 'package:catholicsapp/presentation/MainPage/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: myTextTheme,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFCAF0FF)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
