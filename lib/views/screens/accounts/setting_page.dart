import 'package:flutter/material.dart';
import 'package:flutter_flavor/views/screens/accounts/components/setting_option.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'Setting',
          style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SettingOption(
                    items: [
                      SettingItem(
                        start: "Shop in",
                        end: Text(
                          "Cambodia",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        icon: Icons.storefront,
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      SettingItem(
                        start: "Currency",
                        end: Text(
                          "Riel",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        icon: Icons.attach_money,
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      SettingItem(
                        start: "Sizes",
                        end: Text(
                          "XL",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        icon: Icons.straighten,
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      SettingItem(
                        start: "Notifications",
                        end: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Theme.of(context)
                              .iconTheme
                              .color
                              .withOpacity(0.5),
                        ),
                        icon: Icons.notifications,
                        onPressed: () {
                          Navigator.of(context).pushNamed('/notifications');
                        },
                      ),
                      SettingItem(
                        start: "Face ID",
                        end: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Theme.of(context)
                              .iconTheme
                              .color
                              .withOpacity(0.5),
                        ),
                        icon: Icons.face,
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      SettingItem(
                        start: "Shop",
                        end: Text(
                          "Men",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        icon: Icons.store,
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      SettingItem(
                        start: "Screenshots",
                        end: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Theme.of(context)
                              .iconTheme
                              .color
                              .withOpacity(0.5),
                        ),
                        icon: Icons.camera,
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      SettingItem(
                        start: "Terms & Conditions",
                        end: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Theme.of(context)
                              .iconTheme
                              .color
                              .withOpacity(0.5),
                        ),
                        icon: Icons.lock,
                        onPressed: () {
                          print("Hello");
                        },
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
