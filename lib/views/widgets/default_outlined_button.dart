import 'package:flutter/material.dart';

class DefaultOutlinedButton extends StatelessWidget {
  const DefaultOutlinedButton({Key key, this.title, this.onPressed})
      : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 16,
              ),
        ),
        style: TextButton.styleFrom(
          side: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
