import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';

import '../utils/app_styles.dart';

class AppTitleWithActionText extends StatelessWidget {
  final String title;
  final String actionText;

  const AppTitleWithActionText(
      {Key? key, required this.title, required this.actionText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {
            print("Viewing all...");
          },
          child: Text(
            actionText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
