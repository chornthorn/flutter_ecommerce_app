import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';

import 'filter_option.dart';

class ProductFilterPage extends StatelessWidget {
  const ProductFilterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        title: Text(
          'Filter',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterOption(
                    items: [
                      FilterItem(
                        start: "Gender",
                        end: "All",
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      FilterItem(
                        start: "Product Type",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Style",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Leather / Non Leather",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Color",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Brand",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Body fit",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Size",
                        end: "All",
                        onPressed: () {},
                      ),
                      FilterItem(
                        start: "Price",
                        end: "All",
                        onPressed: () {
                          Navigator.of(context).pushNamed('/price_filter');
                        },
                      ),
                    ],
                  ),
                  VtSpace(MediaQuery.of(context).size.height * 0.25),
                  DefaultButton(
                    label: "Apply",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
