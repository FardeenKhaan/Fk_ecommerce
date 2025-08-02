import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FkAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool ShowBackArrow;
  final IconData? leadingIcon;
  final List<Widget> actions;
  final VoidCallback? leadingOnpressed;
  const FkAppBar({
    super.key,
    this.title,
    this.ShowBackArrow = false,
    this.leadingIcon,
    required this.actions,
    this.leadingOnpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: FKSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            ShowBackArrow
                ? IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(
                  onPressed: () => leadingOnpressed,
                  icon: Icon(leadingIcon),
                )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(FKDeviceUtility.getAppBarHeight());
}
