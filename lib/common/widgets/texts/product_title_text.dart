import 'package:flutter/material.dart';

class FkProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int maxlines;
  final TextAlign? textaligin;
  const FkProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxlines = 2,
    this.textaligin = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          smallSize
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textaligin,
    );
  }
}
