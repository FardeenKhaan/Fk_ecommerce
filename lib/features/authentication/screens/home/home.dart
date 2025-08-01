import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FkPrimaryHeaderContainer(child: Container()),
            SizedBox(height: 20),
            Text(
              'This is the home screen content.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
