import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  var _notification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'Notifications',
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
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sales and promotions",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Switch.adaptive(
                          value: _notification,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _notification = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  VtSpace(12),
                  Text(
                    "You can changes your communication preferences, including email and SMS, from My account ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 13,
                        ),
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
