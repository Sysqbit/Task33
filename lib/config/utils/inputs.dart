import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration inputDecoration = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide.none),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
        color: AppColors.black.withOpacity(.5),
        strokeAlign: StrokeAlign.inside),
  ),
  filled: true,
  isDense: true,
  fillColor: const Color(0xFFD9D9D9).withOpacity(.15),
  contentPadding: EdgeInsets.symmetric(
    horizontal: 23.w,
    vertical: 12.h,
  ),
);
