import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';
import 'package:kwp/screens/screens.dart';
import 'package:kwp/widgets/widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: KwpTheme.primaryVariant1,
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 40),
        title: Text(
          'KOWOPE',
          style: KwpTheme.lightTextTheme.subtitle1,
        ),
      ),
      // endDrawer:
      body: pages[_pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
      endDrawer: SideDrawer(),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 56,
      decoration: const BoxDecoration(
        color: KwpTheme.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <BottomNavItem>[
          BottomNavItem(
            text: 'Pay',
            selected: _pageIndex == 0,
            onTapping: () {
              setState(() {
                _pageIndex = 0;
              });
            },
          ),
          BottomNavItem(
              text: 'Receive',
              selected: _pageIndex == 1,
              onTapping: () {
                setState(() {
                  _pageIndex = 1;
                });
              }),
          BottomNavItem(
              text: 'Transfer',
              selected: _pageIndex == 2,
              onTapping: () {
                setState(() {
                  _pageIndex = 2;
                });
              }),
        ],
      ),
    );
  }
}
