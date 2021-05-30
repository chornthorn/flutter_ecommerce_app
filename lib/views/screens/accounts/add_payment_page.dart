import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

import 'components/voucher_help_option.dart';
import 'components/voucher_list_tile.dart';

class AddPaymentPage extends StatelessWidget {
  const AddPaymentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'Add payment',
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
                  Text(
                    'You curently have no saved paymend method. Get stard by adding one.',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          height: 1.5,
                        ),
                  ),
                  VtSpace(16),
                  Container(
                    width: double.infinity,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/add_payment_2');
                            },
                            child: FDottedLine(
                              color: Theme.of(context)
                                  .iconTheme
                                  .color
                                  .withOpacity(0.5),
                              strokeWidth: 2.0,
                              dottedLength: 10.0,
                              space: 8.0,
                              corner: FDottedLineCorner.all(8),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Icon(
                                  Icons.circle,
                                  color: Theme.of(context)
                                      .iconTheme
                                      .color
                                      .withOpacity(0.4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        HzSpace(8),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Image.asset(
                                'assets/images/logo/master_card.png'),
                          ),
                        ),
                        HzSpace(16),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Image.asset('assets/images/logo/paypal.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  VoucherHelpOption(
                    title: "Need help with these options?",
                    items: [
                      VoucherListTile(
                        title: 'What is 4 eassy payments with Klarna?',
                        isLastIndex: true,
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
