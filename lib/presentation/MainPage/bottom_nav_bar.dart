import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoTabBar(items: const []);
    } else {
      return ValueListenableBuilder<int>(
        valueListenable: selectedIndexNotifier,
        builder: (context, newIndex, child) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: newIndex,
              onTap: (index) {
                selectedIndexNotifier.value = index;
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.handshake_outlined), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: ''),
              ]);
        },
      );
    }
  }
}
