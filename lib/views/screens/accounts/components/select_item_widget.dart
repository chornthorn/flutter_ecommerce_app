import 'package:flutter/material.dart';

class SelectItem extends StatefulWidget {
  const SelectItem({
    Key key,
    @required this.label,
    this.value = false,
    this.callback,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function(dynamic) callback;

  @override
  _SelectItemState createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  var _localValue;

  @override
  void initState() {
    _localValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          onTap: () => widget.callback(!widget.value),
          splashColor: Theme.of(context).iconTheme.color,
          child: Container(
            height: 50,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.label,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                _localValue ? Icon(Icons.check) : SizedBox.shrink(),
              ],
            ),
          ),
        ),
        Container(
          height: .8,
          color: Theme.of(context).iconTheme.color.withOpacity(0.2),
        ),
      ],
    );
  }
}
