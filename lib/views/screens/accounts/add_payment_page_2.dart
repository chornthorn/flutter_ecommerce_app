import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/widgets/custom_date_picker.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';
import 'package:flutter_flavor/views/widgets/default_text_field_custom.dart';

import 'components/credit_card_logo_item.dart';

class AddPaymentPage2 extends StatelessWidget {
  const AddPaymentPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'Add Card',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextField(
                    title: 'Card number',
                    hintText: 'Enter card number',
                  ),
                  CustomDate(
                    callback: (value) {},
                    title: 'Expiry date',
                    label: 'Expiry date',
                    hint: 'MM/YY',
                  ),
                  DefaultTextField(
                    title: 'Name on card',
                    hintText: 'Enter name on card',
                  ),
                  VtSpace(24),
                  DefaultButton(label: 'Save card', onPressed: () {}),
                  VtSpace(16),
                  Text('We accept'),
                  VtSpace(16),
                  Row(
                    children: [
                      CreditCardLogoItem(
                        srcLogo: 'assets/images/logo/visa_card.png',
                      ),
                      HzSpace(16),
                      CreditCardLogoItem(
                        srcLogo: 'assets/images/logo/paypal.png',
                      ),
                      HzSpace(16),
                      CreditCardLogoItem(
                        srcLogo: 'assets/images/logo/master_card.png',
                      ),
                      HzSpace(16),
                      CreditCardLogoItem(
                        srcLogo: 'assets/images/logo/apple_pay.png',
                      ),
                      HzSpace(16),
                      CreditCardLogoItem(
                        srcLogo: 'assets/images/logo/alipay.png',
                      ),
                      Spacer(),
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
