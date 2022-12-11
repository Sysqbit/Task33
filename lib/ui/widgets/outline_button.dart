import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:flutter/cupertino.dart';

class PrimaryOutlineButton extends StatelessWidget {
  final String title;
  final double? buttonHeight;
  final double? borderRadius;
  const PrimaryOutlineButton(
      {super.key, required this.title, this.buttonHeight, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: buttonHeight ?? height * 0.04,
      padding: EdgeInsets.symmetric(
        horizontal: SizeMg.width(20),
      ),
      decoration: BoxDecoration(
          color: AppColors.primary100,
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          border: Border.all(color: AppColors.secondary100, width: 2)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: SizeMg.text(16),
              fontWeight: FontWeight.w700,
              color: AppColors.secondary100),
        ),
      ),
    );
  }
}
