import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.label,
    @required this.onPressed,
    this.style,
  }) : super(key: key);

  final String label;
  final Function onPressed;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style == null ? null : style,
        child: Text(
          label,
          style: Theme.of(context)
              .primaryTextTheme
              .subtitle2
              .copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
