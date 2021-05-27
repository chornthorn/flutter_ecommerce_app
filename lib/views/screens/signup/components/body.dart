import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/screens/signup/components/tell_us_option.dart';
import 'package:flutter_flavor/views/widgets/custom_date_picker.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';
import 'package:flutter_flavor/views/widgets/default_text_field_custom.dart';

import 'interest_option.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int interestedOption = 1;
  bool acceptTerm = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextField(
                  title: "Email address",
                  hintText: "Enter email address",
                  message: "We'll send your order confirmation here",
                ),
                DefaultTextField(
                  title: "First name",
                  hintText: "Enter first name",
                ),
                SizedBox(height: 8),
                DefaultTextField(
                  title: "Last name",
                  hintText: "Enter last name",
                ),
                SizedBox(height: 8),
                DefaultTextField(
                  title: "Password",
                  hintText: "Enter password",
                  message: "Must be 10 or more characters",
                ),
                CustomDate(
                  title: 'Select date of birth',
                  label: "Date of birth",
                  message: "You need to be 16 or over to use Ebuy",
                  hint: 'DD/MM/YYYY',
                  callback: (value) {
                    print("this is date $value");
                  },
                ),
                InterestedOption(
                  label: "Mostly interestd in (Optional):",
                  items: [
                    InterestItem(
                      label: "Womenswear",
                      value: 1,
                      groupValue: interestedOption,
                      callback: (value) {
                        print("Interested option is $value");
                        setState(() {
                          interestedOption = value;
                        });
                      },
                    ),
                    InterestItem(
                      label: "Menswear",
                      value: 2,
                      groupValue: interestedOption,
                      callback: (value) {
                        print("Interested option is $value");
                        setState(() {
                          interestedOption = value;
                        });
                      },
                    ),
                  ],
                ),
                VtSpace(20),
                TellUsOption(
                  tellUsHeader: TellUsHeader(
                    title: "Contact prefested in",
                    subtitle: "Tell us which email you'd like:",
                  ),
                  tellUsFooter: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text('Tell me more  about these'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child:
                            Text('By creating your account, you agree to our'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          'Terms and Conditions & Privacy Policy',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                  items: [
                    TellUsItem(
                      label: 'Discounts and sales',
                      value: acceptTerm,
                      onChanged: (value) {
                        setState(() {
                          acceptTerm = value;
                        });
                        print("Accept term is $value");
                      },
                    ),
                    TellUsItem(
                      label: 'New stuff',
                      value: acceptTerm,
                      onChanged: (value) {
                        setState(() {
                          acceptTerm = value;
                        });
                        print("Accept term is $value");
                      },
                    ),
                    TellUsItem(
                      label: 'Your exclusives',
                      value: acceptTerm,
                      onChanged: (value) {
                        setState(() {
                          acceptTerm = value;
                        });
                        print("Accept term is $value");
                      },
                    ),
                    TellUsItem(
                      label: 'App partners',
                      value: acceptTerm,
                      onChanged: (value) {
                        setState(() {
                          acceptTerm = value;
                        });
                        print("Accept term is $value");
                      },
                    ),
                  ],
                ),
                VtSpace(20),
                DefaultButton(
                    label: 'Sign up',
                    onPressed: () {
                      Navigator.of(context).pushNamed<void>('/main');
                    }),
                VtSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
