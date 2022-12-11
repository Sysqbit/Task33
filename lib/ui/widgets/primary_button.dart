import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final MaterialColor? textColor;
  final MaterialColor? buttonColor;
  final double? buttonHeight;
  const PrimaryButton(
      {super.key,
      required this.title,
      this.textColor,
      this.buttonColor,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: buttonHeight ?? height * 0.04,
      padding: EdgeInsets.symmetric(
        horizontal: SizeMg.width(20),
      ),
      decoration: BoxDecoration(
        color: buttonColor ?? AppColors.secondary100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: SizeMg.text(16),
              fontWeight: FontWeight.w700,
              color: textColor ?? AppColors.primary100),
        ),
      ),
    );
  }
}
