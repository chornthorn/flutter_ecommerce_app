import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

import 'voucher_list_tile.dart';

class VoucherHelpOption extends StatelessWidget {
  const VoucherHelpOption({Key key, @required this.items, this.title})
      : super(key: key);

  final List<VoucherListTile> items;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      margin: EdgeInsets.only(top: 16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          VtSpace(8),
          ...List.generate(
            items.length,
            (index) {
              return VoucherListTile(
                title: items[index].title,
                onPressed: items[index].onPressed,
                isLastIndex: items[index].isLastIndex,
              );
            },
          )
        ],
      ),
    );
  }
}
