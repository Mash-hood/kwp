import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';
import 'package:kwp/screens/screens.dart';
import 'package:kwp/widgets/bottomNav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;

  static List<Widget> pages = <Widget>[
    PayScreen(),
    ReceiveScreen(),
    TransferScreen(),
  ];

  void _pageTapping(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'KOWOPE',
        style: KwpTheme.lightTextTheme.subtitle1,

        // Goldman overriding Poppins here; not really achieving design looks
        /*
        style: TextStyle(
          fontFamily: 'Goldman',
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),

             */
      )),
      // endDrawer: ,
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNav(
        index: _pageIndex,
        onTapping: _pageTapping,
      ),
    );
  }
}
