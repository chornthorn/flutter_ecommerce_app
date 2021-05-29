import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/board_save_item_card.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key key}) : super(key: key);

  final _productSaveItemList = [
    {
      "name": "Handbag LV",
      "img": "assets/images/products/product_07.png",
      "color": Colors.grey,
      "size": "XL",
      "price": "220",
    },
    {
      "name": "Short",
      "img": "assets/images/products/product_06.png",
      "color": Colors.black,
      "size": "30",
      "price": "110",
    },
    {
      "name": "T-shirt",
      "img": "assets/images/products/product_04.png",
      "color": Colors.red.shade800,
      "price": "50",
      "size": "L",
    },
    {
      "name": "Handbag LV",
      "img": "assets/images/products/product_07.png",
      "color": Colors.grey,
      "price": "220",
      "size": "XL",
    },
    {
      "name": "Short",
      "img": "assets/images/products/product_06.png",
      "color": Colors.black,
      "price": "110",
      "size": "S",
    },
    {
      "name": "T-shirt",
      "img": "assets/images/products/product_04.png",
      "color": Colors.red.shade800,
      "price": "50",
      "size": "XL",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Save Items',
            style: Theme.of(context).textTheme.headline5,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart, size: 30),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
            tabs: [
              Tab(child: Text("All Items")),
              Tab(text: "Boards"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _SaveItemTab1(products: _productSaveItemList),
            _SaveItemTab1(products: _productSaveItemList),
          ],
        ),
      ),
    );
  }
}

class _SaveItemTab1 extends StatelessWidget {
  const _SaveItemTab1({Key key, @required this.products}) : super(key: key);

  final List<Map<String, dynamic>> products;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: products.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(bottom: 16),
            itemBuilder: (context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: BoardSaveItem(
                  title: products[index]['name'],
                  color: products[index]['color'],
                  srcImg: products[index]['img'],
                  price: products[index]['price'],
                  size: products[index]['size'],
                  onPressed: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
