import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<AccountListTileItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VtSpace(2),
              AccountListTileItem(
                title: items[index].title,
                icon: items[index].icon,
                onPressed: items[index].onPressed,
              ),
              VtSpace(2),
              Divider(thickness: .6),
            ],
          );
        },
      ),
    );
  }
}

class AccountListTileItem extends StatelessWidget {
  const AccountListTileItem({Key key, this.title, this.icon, this.onPressed})
      : super(key: key);
  final String title;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Theme.of(context).iconTheme.color,
      child: Container(
        child: Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            HzSpace(10),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
