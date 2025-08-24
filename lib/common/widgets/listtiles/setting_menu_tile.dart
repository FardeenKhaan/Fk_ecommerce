import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FkSettingMenuTile extends StatelessWidget {
  final IconData? icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  const FkSettingMenuTile({
    super.key,
    this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 24, color: FKColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
