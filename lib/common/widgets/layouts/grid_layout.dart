import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FkGridLayout extends StatelessWidget {
  final int itemcount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itembuilder;
  const FkGridLayout({
    super.key,
    required this.itemcount,
    this.mainAxisExtent = 288,
    required this.itembuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemcount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: FKSizes.gridViewSpacing,
        crossAxisSpacing: FKSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itembuilder,
    );
  }
}
