import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';
import 'package:kwp/widgets/numberPadButton.dart';

class TransferScreen extends StatefulWidget {
  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final String _displayedText = 'Enter amount';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            height: 50,
            child: Row(
              children: <Widget>[
                //SizedBox(width: 40),
                const Text(
                  "₦ ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto'), // simple hack for naira symbol
                ),
                Expanded(
                  child: Text(
                    _displayedText,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black12),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Icon(Icons.backspace,
                    size: 25, color: KwpTheme.primaryColorVariant2),
                //SizedBox(width: 40)
              ],
            ),
          ),
          const SizedBox(height: 150),
          Container(
            // padding: const EdgeInsets.all(5),
            color: KwpTheme.buttonsBackDropColor,
            height: MediaQuery.of(context).size.height * 0.336,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NumberPadButton(
                      buttonText: '1',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '2',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '3',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NumberPadButton(
                      buttonText: '4',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '5',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '6',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NumberPadButton(
                      buttonText: '7',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '8',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '9',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NumberPadButton(
                      buttonText: '.',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '0',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: 'Next',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
