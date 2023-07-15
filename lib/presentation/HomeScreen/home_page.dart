import 'package:catholicsapp/presentation/HomeScreen/mobile_home_screen.dart';
import 'package:catholicsapp/presentation/HomeScreen/tab_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return const MobileHomeScreen();
      },
      tablet: (p0) {
        return const TabHomeScreen();
      },
    );
  }
}
