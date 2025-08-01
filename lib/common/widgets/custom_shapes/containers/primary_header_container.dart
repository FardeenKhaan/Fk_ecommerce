import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FkPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const FkPrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return FkCurvedEdgeWidget(
      child: Container(
        color: FKColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: circularContainer(
                  backgroundColor: FKColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: circularContainer(
                  backgroundColor: FKColors.textWhite.withOpacity(0.1),
                ),
              ),
              // Column(
              //   children: [
              //     // appbar
              //     // categories
              //     // searchbar
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
