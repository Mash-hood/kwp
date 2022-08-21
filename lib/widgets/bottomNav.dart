import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key, required this.index, required this.onTapping})
      : super(key: key);

  final int index;
  final onTapping;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Receive'),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Transfer'),
        ],
        unselectedIconTheme: const IconThemeData(opacity: 0.0),
        selectedIconTheme: const IconThemeData(opacity: 100.0),
        onTap: onTapping,
        currentIndex: index,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        iconSize: 10);
  }
}
