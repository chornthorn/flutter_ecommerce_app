import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 200,
                child: Card(
                  color: Colors.pink,
                  child: ListTile(
                    title: Text("Item $index"),
                  ),
                ),
              );
            },
            itemCount: 1000,
          ),
        ),
      ),
    );
  }
}
