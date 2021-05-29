import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';
import 'package:flutter_flavor/views/widgets/custom_date_picker.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';
import 'package:flutter_flavor/views/widgets/default_text_field_custom.dart';

import 'components/select_item_widget.dart';

class MyDetailsPage extends StatelessWidget {
  const MyDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).iconTheme.color),
        title: Text(
          'My details',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      DefaultTextField(title: 'First name'),
                      DefaultTextField(title: 'Last name'),
                      DefaultTextField(title: 'Email address'),
                      CustomDate(
                        title: 'Select date of birth',
                        label: "Date of birth",
                        hint: 'DD/MM/YYYY',
                        callback: (value) {
                          print("this is date $value");
                        },
                      ),
                      SelectDropDown(),
                    ],
                  ),
                  VtSpace(
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height / 3.5
                          : MediaQuery.of(context).size.height / 12),
                  DefaultButton(
                    label: 'Save changes',
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).iconTheme.color,
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

class SelectDropDown extends StatelessWidget {
  const SelectDropDown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Gender",
            style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).restorablePush(_dialogBuilder);
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Theme.of(context).iconTheme.color, width: 1.2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gender"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Route<Object> _dialogBuilder(BuildContext context, Object arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          children: [
            SelectItem(
              label: "Female",
              value: true,
              callback: (value) {},
            ),
            SelectItem(
              label: "Male",
              value: false,
              callback: (value) {},
            ),
          ],
        );
      },
    );
  }
}
