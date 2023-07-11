import 'package:catholicsapp/presentation/HomeScreen/mobile_home_screen.dart';
import 'package:catholicsapp/presentation/HomeScreen/tab_home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const MobileHomeScreen();
        } else {
          return const TabHomeScreen();
        }
      },
    );
  }
}
