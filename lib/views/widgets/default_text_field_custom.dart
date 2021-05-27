import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key key,
    @required this.title,
    this.hintText,
    this.message,
    this.callback,
    this.controller,
  }) : super(key: key);

  final String title, hintText, message;
  final Function(dynamic) callback;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Theme.of(context).iconTheme.color, width: 1.2),
          ),
          child: TextField(
            controller: controller,
            onChanged: (val) => callback(val),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              hintText: hintText,
              hintStyle:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
            ),
          ),
        ),
        if (message != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              message,
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12),
            ),
          ),
      ],
    );
  }
}
