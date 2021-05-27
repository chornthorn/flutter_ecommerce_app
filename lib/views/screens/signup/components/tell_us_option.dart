import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class TellUsOption extends StatelessWidget {
  const TellUsOption({
    Key key,
    @required this.tellUsHeader,
    @required this.items,
    this.tellUsFooter,
  }) : super(key: key);

  final TellUsHeader tellUsHeader;
  final List<TellUsItem> items;
  final Widget tellUsFooter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 5, // blur radius
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tellUsHeader,
          VtSpace(30),
          for (var item in items)
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: item,
            ),
          tellUsFooter,
          VtSpace(8),
        ],
      ),
    );
  }
}

class TellUsHeader extends StatelessWidget {
  const TellUsHeader({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          direction: Axis.vertical,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            VtSpace(8),
            Text(subtitle),
          ],
        ),
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class TellUsItem extends StatelessWidget {
  const TellUsItem({
    Key key,
    this.label,
    this.onChanged,
    this.value = false,
  }) : super(key: key);

  final String label;
  final Function(bool) onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      splashColor: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          AnimatedContainer(
            width: 25,
            height: 25,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInBack,
            decoration: BoxDecoration(
              color: !value
                  ? Theme.of(context).iconTheme.color
                  : Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: value
                ? Icon(Icons.check, color: Colors.white)
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
