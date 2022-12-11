import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/inputs.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final bool? isHint;
  final String? hintText;
  const Section({super.key, required this.title, this.isHint, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.h5(),
        ),
        SizedBox(
          height: SizeMg.height(8),
        ),
        TextFormField(
          decoration: isHint == true
              ? inputDecoration.copyWith(
                  hintText: hintText,
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.gray300,
                      fontWeight: FontWeight.bold))
              : inputDecoration,
          keyboardType: TextInputType.text,
          cursorColor: AppColors.secondary100,
        ),
        SizedBox(
          height: SizeMg.height(8),
        ),
      ],
    );
  }
}
