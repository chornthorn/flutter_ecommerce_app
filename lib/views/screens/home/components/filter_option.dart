import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class FilterOption extends StatelessWidget {
  const FilterOption({Key key, @required this.items}) : super(key: key);

  final List<FilterItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          for (var item in items) item,
        ],
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem({Key key, this.start, this.end, this.onPressed})
      : super(key: key);

  final String start, end;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Theme.of(context).iconTheme.color,
      child: Container(
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  start,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  end,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            VtSpace(10),
            Divider(
              thickness: 1,
              color: Theme.of(context).iconTheme.color.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
