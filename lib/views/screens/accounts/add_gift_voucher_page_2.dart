import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';
import 'package:flutter_flavor/views/widgets/default_text_field_custom.dart';

class AddGiftVoucherPage2 extends StatelessWidget {
  const AddGiftVoucherPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'Add gift cards',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Enter the long number and scratch off the panel on your card to reveal your pin as shown below.',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              height: 1.5,
                            ),
                      ),
                      VtSpace(20),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        margin: EdgeInsets.symmetric(horizontal: 50),
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
                          children: [
                            Text(
                              'Back of Gift Card',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                    fontSize: 16,
                                  ),
                            ),
                            VtSpace(8),
                            Text(
                              '123456789456789 8989',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    fontSize: 12,
                                  ),
                            ),
                            VtSpace(8),
                            Image.asset(
                                'assets/images/accounts/gift_card_voucher.png'),
                          ],
                        ),
                      ),
                      VtSpace(16),
                      DefaultTextField(
                        title: '16-Digit Code',
                        hintText: 'Enter 16-Digit Code',
                      ),
                      DefaultTextField(
                        title: '4-Digit Pin',
                        hintText: 'Enter 4-Digit Pin',
                      ),
                    ],
                  ),
                  VtSpace(
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height / 3.0
                          : MediaQuery.of(context).size.height / 12),
                  DefaultButton(
                    label: 'Add gift cards',
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
