import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Bank",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.forward,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed<void>('/home', arguments: "Bong Thorn");
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text("Item $index"),
                ),
              );
            },
            itemCount: 20,
            addAutomaticKeepAlives: true,
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
