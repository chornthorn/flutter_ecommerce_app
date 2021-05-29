import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

import 'components/product_item_card.dart';
import 'components/product_recent_item_card.dart';
import 'components/product_style_base_item_card.dart';
import 'components/saved_item_card.dart';
import 'components/slide_promote_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SlidePromoteCard(
                    title: "New Trend",
                    srcImg: "assets/images/products/promote_01.png",
                    onPressed: () {
                      Navigator.of(context).pushNamed('/new_trend');
                    },
                  ),
                  VtSpace(16),
                  Row(
                    children: [
                      ProductItemCard(
                        name: "Graphic shirts",
                        subtitle: "The fine print",
                        srcImg: "assets/images/products/product_02.png",
                      ),
                      HzSpace(16),
                      ProductItemCard(
                        name: "Summer co-ords",
                        subtitle: "Just add kicks",
                        srcImg: "assets/images/products/product_04.png",
                      ),
                    ],
                  ),
                  VtSpace(16),
                  Row(
                    children: [
                      ProductItemCard(
                        name: "Sandals",
                        subtitle: "Stay cool",
                        srcImg: "assets/images/products/product_06.png",
                      ),
                      HzSpace(16),
                      ProductItemCard(
                        name: "Summer co-ords",
                        subtitle: "Just add kicks",
                        srcImg: "assets/images/products/product_07.png",
                      ),
                    ],
                  ),
                  VtSpace(16),
                  SlidePromoteCard(
                    title: "SRIPPES",
                    srcImg: "assets/images/products/promote_02.png",
                  ),
                  VtSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recently viewed',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.red.shade800,
                      ),
                    ],
                  ),
                  VtSpace(16),
                  Row(
                    children: [
                      ProductRecentItemCard(
                        name: "Pull&Bear slim fit",
                        subtitle: "Stay cool",
                        srcImg: "assets/images/products/product_06.png",
                      ),
                      HzSpace(16),
                      ProductRecentItemCard(
                        name: "Summer co-ords",
                        subtitle: "Just add kicks",
                        srcImg: "assets/images/products/product_07.png",
                      ),
                    ],
                  ),
                  VtSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saved items',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        'View all',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  VtSpace(16),
                  SavedItemCard(
                    name: "Handbag LV",
                    price: "225",
                    srcImg: "assets/images/products/product_07.png",
                    onPressed: () {},
                  ),
                  VtSpace(16),
                  SavedItemCard(
                    name: "Handbag LV",
                    price: "150",
                    srcImg: "assets/images/products/product_06.png",
                    onPressed: () {},
                  ),
                  VtSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Brands you  may like',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  VtSpace(16),
                  Wrap(
                    spacing: 6,
                    runSpacing: 0,
                    alignment: WrapAlignment.spaceEvenly,
                    children: List.generate(
                      5,
                      (index) {
                        return FilterChip(
                          label: Text('The North face'),
                          onSelected: (value) {},
                        );
                      },
                    ),
                  ),
                  VtSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Styles based on your shopping habits',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ],
                  ),
                  VtSpace(16),
                  Row(
                    children: [
                      ProductStyleBaseItemCard(
                        name: "Graphic shirts",
                        subtitle: "The fine print",
                        price: "200",
                        srcImg: "assets/images/products/product_02.png",
                      ),
                      HzSpace(16),
                      ProductStyleBaseItemCard(
                        name: "Summer co-ords Summer co-ords",
                        subtitle: "Just add kicks",
                        price: "200",
                        srcImg: "assets/images/products/product_04.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
