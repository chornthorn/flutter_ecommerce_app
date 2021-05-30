import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

import 'components/voucher_help_option.dart';
import 'components/voucher_list_tile.dart';

class AddGiftVoucherPage extends StatelessWidget {
  const AddGiftVoucherPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'Gift cards & voucher',
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
                  Row(
                    children: [
                      _GiftVoucherItem(
                        title: 'Gift cards',
                        icon: Icons.circle,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/add_gift_voucher_page_2');
                        },
                      ),
                      HzSpace(16),
                      _GiftVoucherItem(
                        title: 'Gift voucher',
                        icon: Icons.redeem,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  VoucherHelpOption(
                    title: "Need help with these options?",
                    items: [
                      VoucherListTile(
                        title: 'What is a Gift Card?',
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      VoucherListTile(
                        title: 'What is a Gift Voucher?',
                        onPressed: () {
                          print("Hello");
                        },
                        isLastIndex: true,
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

class _GiftVoucherItem extends StatelessWidget {
  const _GiftVoucherItem({
    Key key,
    @required this.title,
    @required this.icon,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Theme.of(context).textTheme.subtitle1.color,
              ),
              VtSpace(8),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
