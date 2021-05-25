import 'package:flutter/material.dart';

class CustomDate extends StatefulWidget {
  const CustomDate({
    Key key,
    @required this.callback,
    @required this.title,
    this.message,
    this.hint,
    @required this.label,
  }) : super(key: key);

  final String title, label, message, hint;
  final Function(String) callback;

  @override
  _CustomDateState createState() => _CustomDateState();
}

class _CustomDateState extends State<CustomDate> {
  DateTime _date = DateTime.now();
  var date;
  Future<dynamic> _selectDate() async {
    final DateTime newDate = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1970, 1),
      lastDate: DateTime(2022, 7),
      helpText: widget.title,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context),
          child: child,
        );
      },
    );
    if (newDate != null) {
      setState(() {
        _date = newDate;
      });
    }
    date = _date.toString().split(" ")[0];
    widget.callback(date);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
          ),
        ),
        GestureDetector(
          onTap: () => _selectDate(),
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
                  Text(date ?? widget.hint),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ),
        widget.message != null
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  widget.message,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 12),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
