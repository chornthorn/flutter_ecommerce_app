import 'package:flutter/material.dart';
import 'package:flutter_flavor/views/widgets/custom_date_picker.dart';
import 'package:flutter_flavor/views/widgets/default_text_field_custom.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
