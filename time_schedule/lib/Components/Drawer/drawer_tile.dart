import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyDrawerList extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;

  const MyDrawerList(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize:
                    Theme.of(context).textTheme.titleSmall!.fontSize! * 1.3,
              ),
        ),
        onTap: onTap,
      ),
    );
  }
}
