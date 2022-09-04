import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';

class PayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 100),
          Container(
              //    color: Colors.lightGreenAccent,
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              height: 50,
              child: Row(
                children: const <Widget>[
                  //SizedBox(width: 40),
                  Expanded(
                    child: Text(
                      'Enter amount',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black12),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Icon(Icons.backspace, size: 25, color: Color(0xFF00B9FF)),
                  //SizedBox(width: 40)
                ],
              )

              /*
            Text(
              'HERE',
              // '₦ NUMBERS',
              style: TextStyle(
                  fontSize: 300,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.start,
            ),

             */
              ),
          const SizedBox(height: 150),
          Container(
            // padding: const EdgeInsets.all(5),
            color: const Color(0xFFE9EAEE),
            height: MediaQuery.of(context).size.height * 0.336,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[numPads('1'), numPads('2'), numPads('3')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[numPads('4'), numPads('5'), numPads('6')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[numPads('7'), numPads('8'), numPads('9')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    numPads('.'),
                    numPads('0'),
                    numPads('Next')
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget numPads(String label) {
    return MaterialButton(
      height: 55,
      minWidth: 120,
      onPressed: () {},
      child: Center(
        child: Text(label,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 30)),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 10,
    );
  }
}
