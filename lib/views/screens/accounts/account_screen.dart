import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

import 'components/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/accounts/account_bg.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(.25),
                    BlendMode.colorBurn,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 80),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/accounts/bongthorn.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      VtSpace(16),
                      Text(
                        'Bong Thorn',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      VtSpace(30),
                      AccountOption(
                        items: [
                          AccountListTileItem(
                            title: 'My Order',
                            icon: Icons.receipt_long,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/my_order');
                            },
                          ),
                          AccountListTileItem(
                            title: 'Premier Delivery',
                            icon: Icons.card_membership,
                          ),
                        ],
                      ),
                      VtSpace(20),
                      AccountOption(
                        items: [
                          AccountListTileItem(
                            title: 'My Details',
                            icon: Icons.details,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/my_details');
                            },
                          ),
                          AccountListTileItem(
                            title: 'Address book',
                            icon: Icons.location_on,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/add_book_address');
                            },
                          ),
                          AccountListTileItem(
                            title: 'Payment methods',
                            icon: Icons.monetization_on,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/add_payment');
                            },
                          ),
                          AccountListTileItem(
                            title: 'Contact preferences',
                            icon: Icons.perm_contact_calendar,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/setting');
                            },
                          ),
                          AccountListTileItem(
                            title: 'Social accounts',
                            icon: Icons.person,
                          ),
                        ],
                      ),
                      VtSpace(20),
                      AccountOption(
                        items: [
                          AccountListTileItem(
                            title: 'Gift cards & voucher',
                            icon: Icons.card_giftcard,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/gift_voucher');
                            },
                          ),
                        ],
                      ),
                      VtSpace(20),
                      AccountOption(
                        items: [
                          AccountListTileItem(
                            title: 'Need help?',
                            icon: Icons.info,
                            onPressed: () {
                              print("Hello click");
                            },
                          ),
                          AccountListTileItem(
                            title: 'Tell us what you think of Ebuy',
                            icon: Icons.contact_support,
                            onPressed: () {
                              print("Hello click");
                            },
                          ),
                        ],
                      ),
                      VtSpace(20),
                      AccountOption(
                        items: [
                          AccountListTileItem(
                            title: 'Sign out',
                            icon: Icons.logout,
                            onPressed: () {
                              print("Hello click");
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 16,
              child: SafeArea(
                child: Icon(
                  Icons.verified,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
