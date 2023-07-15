import 'package:catholicsapp/presentation/HomeScreen/home_page.dart';
import 'package:catholicsapp/presentation/LibraryPage/library_page.dart';
import 'package:catholicsapp/presentation/NewsPage/news_page.dart';
import 'package:catholicsapp/presentation/PrayerPage/prayer_page.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  final List pages = const [
    HomePage(),
    PrayerPage(),
    LibraryPage(),
    NewsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MainBottomNavBar(),
        body: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (context, value, child) {
            return pages[selectedIndexNotifier.value];
          },
        ));
  }
}
