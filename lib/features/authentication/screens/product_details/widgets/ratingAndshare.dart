import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FkRatingAndShare extends StatelessWidget {
  const FkRatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 24),
            SizedBox(width: FKSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "4.5", style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: " (120 Reviews)"),
                ],
              ),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.share, size: FKSizes.iconMd)),
      ],
    );
  }
}
