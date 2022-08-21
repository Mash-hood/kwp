import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';
import 'package:kwp/screens/screens.dart';

void main() {
  runApp(const kwp());
}

class kwp extends StatelessWidget {
  const kwp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = KwpTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kowope Mobile Application',
      theme: theme,
      home: const Home(),
    );
  }
}
