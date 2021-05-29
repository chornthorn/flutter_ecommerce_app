import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class BoardSaveItem extends StatelessWidget {
  const BoardSaveItem({
    Key key,
    @required this.title,
    @required this.srcImg,
    @required this.onPressed,
    this.size,
    @required this.color,
    @required this.price,
  }) : super(key: key);

  final String title, srcImg, size, price;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 60, top: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 80, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.subtitle1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      VtSpace(10),
                      Row(
                        children: [
                          Text('Color: '),
                          Icon(Icons.circle, color: color),
                        ],
                      ),
                      VtSpace(2),
                      size != null ? Text('Size: $size') : SizedBox.shrink(),
                      VtSpace(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "\$$price",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          GestureDetector(
                            child: Icon(Icons.shopping_cart),
                            onTap: onPressed,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(srcImg, width: 100),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
