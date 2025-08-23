import 'package:fk_ecommerce/common/widgets/images/fk_circular_image.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:flutter/material.dart';

class FkUserProfileTile extends StatelessWidget {
  const FkUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FkCircularImage(image: FKImageStrings.user, width: 50, height: 50, padding: 0),
      title: Text('Fardeen Khan', style: Theme.of(context).textTheme.headlineSmall!.apply(color: FKColors.white)),
      subtitle: Text(
        'fardeenkhan@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: FKColors.white),
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: FKColors.white)),
    );
  }
}
