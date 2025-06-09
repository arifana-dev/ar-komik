import 'package:ar_komik/app/data/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({super.key, this.title, this.bottom, this.actions});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: AppColors.transparent,
      title: title,
      actions: actions,
      bottom: bottom,
    );
  }
}
