import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';
import 'package:kwp/widgets/widgets.dart';

class ReceiveScreen extends StatefulWidget {
  @override
  State<ReceiveScreen> createState() => _ReceiveScreenState();
}

class _ReceiveScreenState extends State<ReceiveScreen> {
  String _displayedText = 'Enter amount';

  _valuesConcatinate(String input) {
    setState(() {
      _displayedText =
          _displayedText == 'Enter amount' ? input : _displayedText + input;
    });
  }

  void _delete() {
    setState(() {
      _displayedText = _displayedText == 'Enter amount' || _displayedText == ''
          ? _displayedText
          : _displayedText.substring(0, _displayedText.length - 1);
    });
  }

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
                      fontSize: 24,
                      fontFamily: 'Roboto'), // simple hack for naira symbol
                ),
                Expanded(
                  child: Text(
                    _displayedText,
                    style: TextStyle(
                        fontSize: _displayedText == 'Enter amount' ? 24 : 30,
                        letterSpacing: 1,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: _displayedText == 'Enter amount'
                            ? Colors.black12
                            : Colors.black),
                    textAlign: TextAlign.start,
                  ),
                ),
                IconButton(
                  onPressed: _delete,
                  icon: const Icon(Icons.backspace,
                      size: 25, color: KwpTheme.primaryColorVariant2),
                ),
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
                      buttonAction: () => _valuesConcatinate('1'),
                    ),
                    NumberPadButton(
                      buttonText: '2',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('2'),
                    ),
                    NumberPadButton(
                      buttonText: '3',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('3'),
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
                      buttonAction: () => _valuesConcatinate('4'),
                    ),
                    NumberPadButton(
                      buttonText: '5',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('5'),
                    ),
                    NumberPadButton(
                      buttonText: '6',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('6'),
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
                      buttonAction: () => _valuesConcatinate('7'),
                    ),
                    NumberPadButton(
                      buttonText: '8',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('8'),
                    ),
                    NumberPadButton(
                      buttonText: '9',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('9'),
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
                      buttonAction: () => _valuesConcatinate('.'),
                    ),
                    NumberPadButton(
                      buttonText: '0',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      buttonAction: () => _valuesConcatinate('0'),
                    ),
                    // TO DO ???: consider using Stateful builder for next button and display container
                    // then, Stateless widget can be used for Receive page. Performance topic
                    NumberPadButton(
                      buttonText: 'Next',
                      buttonColor: _displayedText == 'Enter amount' ||
                              _displayedText == ''
                          ? Colors.white
                          : KwpTheme.primaryColorVariant2,
                      textColor: _displayedText == 'Enter amount' ||
                              _displayedText == ''
                          ? Colors.black12
                          : Colors.white,
                      buttonAction: _displayedText == 'Enter amount' ||
                              _displayedText == ''
                          ? () {}
                          : () {
                              showModalBottomSheet(
                                backgroundColor: Colors
                                    .transparent, // to ensure built object's curves show
                                context: context,
                                builder: (BuildContext context) {
                                  return const PaymentOptionBottomSheet(
                                    nfcPath: '/receive-page-nfc',
                                    qrPath: '/receive-page-qr',
                                  );
                                },
                              );
                            },
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
