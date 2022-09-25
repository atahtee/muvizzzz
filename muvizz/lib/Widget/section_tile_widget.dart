

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muvizz/theme/app_color.dart';

class SectionTitleWidget extends StatelessWidget {
  const SectionTitleWidget(
      {super.key,
      required this.title,
      this.sufixText = "See all",
      this.onsufixClick});

  final String title;
  final String sufixText;
  final void Function()? onsufixClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        InkWell(
          onTap: onsufixClick,
          child: Text(
            sufixText,
            style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColor.primaryColor)
          ),
        )
      ],
    );
  }
}
