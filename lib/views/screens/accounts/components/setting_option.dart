import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class SettingOption extends StatelessWidget {
  const SettingOption({Key key, @required this.items}) : super(key: key);

  final List<SettingItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
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

class SettingItem extends StatelessWidget {
  const SettingItem({
    Key key,
    @required this.start,
    @required this.end,
    @required this.onPressed,
    @required this.icon,
  }) : super(key: key);

  final String start;
  final Widget end;
  final Function onPressed;
  final IconData icon;

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
                Row(
                  children: [
                    Icon(icon, color: Theme.of(context).primaryColor),
                    HzSpace(12),
                    Text(
                      start,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
                end,
              ],
            ),
            VtSpace(4),
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
