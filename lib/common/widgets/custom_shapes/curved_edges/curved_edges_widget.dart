import 'package:fk_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class FkCurvedEdgeWidget extends StatelessWidget {
  const FkCurvedEdgeWidget({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: FkCustomCurvedEdges(), child: child);
  }
}
