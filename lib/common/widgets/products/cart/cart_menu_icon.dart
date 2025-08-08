import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FkCartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? IconColor;
  const FkCartCounterIcon({super.key, required this.onPressed, this.IconColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.shopping_bag, color: IconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: FKColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: FKColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
