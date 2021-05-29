import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/accounts/order_page.png',
                        width: 350,
                      ),
                      VtSpace(20),
                      Text(
                        'You currently have no orders',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontSize: 18),
                      ),
                      VtSpace(10),
                      Text('Best get shopping App pronto... '),
                    ],
                  ),
                  DefaultButton(
                    label: 'Start shopping',
                    onPressed: () {},
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
