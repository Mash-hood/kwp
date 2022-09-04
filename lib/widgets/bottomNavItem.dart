import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';

class BottomNavItem extends StatelessWidget {
  final String text;
  final bool selected;
  final Function() onTapping;

  const BottomNavItem(
      {Key? key,
      required this.text,
      required this.selected,
      required this.onTapping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: onTapping,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: selected ? Colors.white : KwpTheme.accentTextField),
          ),
        ),
        Icon(
          Icons.circle,
          size: 10,
          color: selected ? Colors.white : Colors.transparent,
        )
      ],
    );
  }
}
