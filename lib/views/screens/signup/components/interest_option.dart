import 'package:flutter/material.dart';

class InterestedOption extends StatelessWidget {
  const InterestedOption({
    Key key,
    @required this.items,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.label,
  }) : super(key: key);

  final String label;
  final List<InterestItem> items;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              label,
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
            ),
          ),
        Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 5, // blur radius
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [for (var item in items) item],
          ),
        ),
      ],
    );
  }
}

class InterestItem extends StatelessWidget {
  const InterestItem({
    Key key,
    @required this.label,
    @required this.value,
    @required this.groupValue,
    @required this.callback,
  }) : super(key: key);

  final String label;
  final dynamic value, groupValue;
  final Function(dynamic) callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        value: value,
        groupValue: groupValue,
        title: Text(label),
        onChanged: (value) => callback(value),
      ),
    );
  }
}
