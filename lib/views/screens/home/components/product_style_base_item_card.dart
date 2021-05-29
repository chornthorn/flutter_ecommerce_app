import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class ProductStyleBaseItemCard extends StatelessWidget {
  const ProductStyleBaseItemCard({
    Key key,
    @required this.name,
    this.subtitle = "",
    @required this.srcImg,
    this.price,
    this.like,
    this.love,
  }) : super(key: key);

  final String name, subtitle, srcImg, price;
  final Function like, love;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 45),
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
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontSize: 16),
                          maxLines: 1,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(Icons.favorite, color: Colors.red.shade800),
                        onTap: love,
                      ),
                    ],
                  ),
                  VtSpace(8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$$price",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      GestureDetector(
                          child: Icon(Icons.thumb_down), onTap: like),
                    ],
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
