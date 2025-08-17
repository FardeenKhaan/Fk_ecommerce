import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FKTabbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const FKTabbar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? FKColors.black : FKColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: FKColors.primary,
        labelColor: dark ? FKColors.white : FKColors.primary,
        unselectedLabelColor: FKColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(FKDeviceUtility.getAppBarHeight());
}
