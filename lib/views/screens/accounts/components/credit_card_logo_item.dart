import 'package:flutter/material.dart';

class CreditCardLogoItem extends StatelessWidget {
  const CreditCardLogoItem({Key key, @required this.srcLogo}) : super(key: key);

  final String srcLogo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Image.asset(srcLogo, width: 35, height: 35),
      ),
    );
  }
}
