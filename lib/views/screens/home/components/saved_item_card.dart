import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class SavedItemCard extends StatelessWidget {
  const SavedItemCard({
    Key key,
    @required this.name,
    @required this.price,
    @required this.srcImg,
    this.onPressed,
  }) : super(key: key);

  final String name, price, srcImg;
  final Function onPressed;

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
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      VtSpace(8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$123",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(fontSize: 18),
                          ),
                          InkWell(
                            onTap: onPressed,
                            splashColor: Theme.of(context).primaryColor,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
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

class SavedItemCard2 extends StatelessWidget {
  const SavedItemCard2({
    Key key,
    @required this.name,
    @required this.price,
    @required this.srcImg,
    this.onPressed,
    this.color = Colors.grey,
  }) : super(key: key);

  final String name, price, srcImg;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(srcImg, width: 100),
              HzSpace(16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 18),
                  ),
                  VtSpace(4),
                  Row(
                    children: [
                      Text('Color: '),
                      Icon(Icons.circle, color: color),
                    ],
                  ),
                  VtSpace(12),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: onPressed,
            iconSize: 35,
          ),
        ],
      ),
    );
  }
}
