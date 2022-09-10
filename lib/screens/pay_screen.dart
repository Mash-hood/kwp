import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';
import 'package:kwp/widgets/widgets.dart';

class PayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            height: 50,
            child: const Text(
              'Use the NEXT button to proceed',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.start,
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
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '2',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '3',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
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
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '5',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '6',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
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
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '8',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '9',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
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
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: '0',
                      buttonColor: Colors.white,
                      textColor: Colors.black12,
                      buttonAction: () {},
                    ),
                    NumberPadButton(
                      buttonText: 'Next',
                      buttonColor: KwpTheme.primaryColorVariant2,
                      textColor: Colors.white,
                      buttonAction: () {
                        showModalBottomSheet(
                          backgroundColor: Colors
                              .transparent, // to ensure built object's curves show
                          context: context,
                          builder: (BuildContext context) {
                            return const PaymentOptionBottomSheet(
                              nfcPath: '/pay-page-nfc',
                              qrPath: '/pay-page-qr',
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
