import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GiftVoucherPage extends StatelessWidget {
  const GiftVoucherPage({Key key}) : super(key: key);

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
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 120,
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/images/accounts/gitf.svg',
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/images/accounts/voucher.svg',
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  Spacer(),
                ],
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
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        margin: EdgeInsets.only(top: 150),
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
                        child: Column(
                          children: [
                            Text(
                              'You have no card yet',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(fontSize: 18),
                            ),
                            VtSpace(16),
                            Text(
                              "You currently have no cards linked to you \naccount. ",
                              textAlign: TextAlign.center,
                            ),
                            VtSpace(8),
                            Text(
                              "Get started by see redeeming or buying \none now.",
                              textAlign: TextAlign.center,
                            ),
                            VtSpace(16),
                            DefaultButton(
                              label: 'Add gift cards',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
