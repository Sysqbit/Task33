import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:flutter/material.dart';

class DrawerSuMenu extends StatelessWidget {
  final String text;
  final IconData leadingIcon;
  final VoidCallback subtitleOnTap;
  const DrawerSuMenu(
      {super.key,
      required this.text,
      required this.leadingIcon,
      required this.subtitleOnTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: subtitleOnTap,
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                height: SizeMg.width(15),
                width: SizeMg.width(15),
                child: Icon(
                  leadingIcon,
                  color: AppColors.gray200,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: SizeMg.text(14),
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
