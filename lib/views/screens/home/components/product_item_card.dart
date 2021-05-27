import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({
    Key key,
    @required this.name,
    this.subtitle = "",
    @required this.srcImg,
  }) : super(key: key);

  final String name, subtitle, srcImg;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300.withOpacity(0.5),
              spreadRadius: 3.5,
              blurRadius: 8,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(srcImg, width: 100),
            Spacer(),
            Text(
              name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            VtSpace(8),
            Expanded(
              child: Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
