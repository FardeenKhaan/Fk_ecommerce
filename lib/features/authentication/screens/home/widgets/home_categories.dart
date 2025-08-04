import 'package:fk_ecommerce/common/widgets/common_text_widget/vertical_image_text.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:flutter/material.dart';

class FkHomeCategores extends StatelessWidget {
  const FkHomeCategores({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FkVerticalImageText(
            title: 'Cosmetics',
            image: FKImageStrings.cosmeticIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
