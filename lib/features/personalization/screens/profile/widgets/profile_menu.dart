import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FkProfileMenu extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String title, value;
  const FkProfileMenu({
    super.key,
    this.icon = Icons.arrow_forward_ios,
    required this.onTap,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: FKSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis),
            ),
            Expanded(
              flex: 5,
              child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis),
            ),
            Expanded(child: Icon(icon, size: 10)),
          ],
        ),
      ),
    );
  }
}
