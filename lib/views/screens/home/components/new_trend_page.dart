import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

import 'filter_button.dart';
import 'product_new_trend_card.dart';
import 'sort_item.dart';

class NewTrendPage extends StatefulWidget {
  const NewTrendPage({Key key}) : super(key: key);

  @override
  _NewTrendPageState createState() => _NewTrendPageState();
}

class _NewTrendPageState extends State<NewTrendPage> {
  var recommended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'New Trend',
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        FilterButton(
                          title: "Sort",
                          icon: Icons.sort,
                          onPressed: () {
                            print("click");
                            Navigator.of(context)
                                .restorablePush(_dialogBuilder);
                          },
                        ),
                        HzSpace(20),
                        FilterButton(
                          title: "Filter",
                          icon: Icons.tune,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/product_filter');
                          },
                        ),
                      ],
                    ),
                  ),
                  VtSpace(16),
                  GridView.extent(
                    childAspectRatio: (2 / 2),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(10.0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    maxCrossAxisExtent: 250,
                    children: [
                      ...List.generate(10, (index) {
                        return Row(
                          children: [
                            ProductNewTrendItemCard(
                              name: "Graphic shirts",
                              subtitle: "The fine print",
                              srcImg: "assets/images/products/product_02.png",
                              price: "25",
                            ),
                          ],
                        );
                      })
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Route<Object> _dialogBuilder(BuildContext context, Object arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          children: [
            SortItem(
              label: "Recommended",
              value: true,
              callback: (value) {},
            ),
            SortItem(
              label: "What's New",
              value: false,
              callback: (value) {},
            ),
            SortItem(
              label: "Price: High to low",
              value: false,
              callback: (value) {},
            ),
            SortItem(
              label: "Price: Low to high",
              value: false,
              callback: (value) {},
            ),
          ],
        );
      },
    );
  }
}
