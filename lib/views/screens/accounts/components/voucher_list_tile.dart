import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class VoucherListTile extends StatelessWidget {
  const VoucherListTile({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.isLastIndex = false,
  }) : super(key: key);

  final String title;
  final Function onPressed;
  final bool isLastIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Theme.of(context).iconTheme.color,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ],
            ),
            if (!isLastIndex) VtSpace(4),
            if (!isLastIndex) Divider(thickness: .8),
          ],
        ),
      ),
    );
  }
}
