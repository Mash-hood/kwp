import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';

class PaymentOptionBottomSheet extends StatelessWidget {
  final String nfcPath;
  final String qrPath;

  const PaymentOptionBottomSheet(
      {Key? key, required this.qrPath, required this.nfcPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      // color: KwpTheme.bottomSheetColor,
      decoration: const BoxDecoration(
        color: KwpTheme.bottomSheetColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 25),
          const Text(
            'Choose a payment method:',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: KwpTheme.primaryColor),
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.phonelink_ring,
                size: 30, color: KwpTheme.primaryColor),
            title: const Text(
              'NFC',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: KwpTheme.primaryColor),
            ),
            horizontalTitleGap: 36,
            onTap: () {
              Navigator.pushNamed(context, nfcPath);
            },
          ),
          const Divider(
              thickness: 1.5, color: KwpTheme.primaryColor, indent: 90.0),
          ListTile(
            leading: const Icon(Icons.qr_code,
                size: 30, color: KwpTheme.primaryColor),
            title: const Text(
              'QR',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: KwpTheme.primaryColor),
            ),
            horizontalTitleGap: 36,
            onTap: () {
              Navigator.pushNamed(context, qrPath);
            },
          ),
        ],
      ),
    );
  }
}
