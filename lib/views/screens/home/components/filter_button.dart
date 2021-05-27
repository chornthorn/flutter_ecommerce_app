import 'package:flutter/material.dart';
import 'package:flutter_flavor/utils/components/spacers.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        splashColor: Theme.of(context).iconTheme.color,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 1.2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
              ),
              HzSpace(10),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
