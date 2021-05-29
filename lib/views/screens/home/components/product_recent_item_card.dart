import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class ProductRecentItemCard extends StatelessWidget {
  const ProductRecentItemCard({
    Key key,
    @required this.name,
    this.subtitle = "",
    @required this.srcImg,
  }) : super(key: key);

  final String name, subtitle, srcImg;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 40),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red.shade800,
                      )
                    ],
                  ),
                  VtSpace(5),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  VtSpace(8),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(srcImg, width: 100),
          ),
        ],
      ),
    );
  }
}
