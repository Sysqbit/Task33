import 'dart:ui';

import 'package:auto_e_invoice/config/router/app_routes.dart';
import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:flutter/material.dart';

import '../../../widgets/adaptive/adaptive_button.dart';

Future<dynamic> salesAlertDialog(BuildContext context, double height) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Dialog(
            backgroundColor: AppColors.primary100,
            child: Container(
              color: AppColors.primary100,
              height: height * 0.3,
              width: height * 0.4,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 10),
                    AdaptiveButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.performaInvoicePage),
                      child: Text(
                        'Performa Invoice',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    AdaptiveButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.taxInvoicePage),
                      child: Text(
                        'Tax Invoice',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    AdaptiveButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.exportInvoicePage),
                      child: Text(
                        'Export',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    AdaptiveButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.deliveryChalanPage),
                      child: Text(
                        'Delivery Chalan',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    AdaptiveButton(
                      onTap: () =>
                          Navigator.of(context).pushNamed(AppRouter.rcmPage),
                      child: Text(
                        'RCM',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    AdaptiveButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.stockTransferPage),
                      child: Text(
                        'Stock Transfer',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    AdaptiveButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.fixedAssetsPage),
                      child: Text(
                        'Fixed Assetes',
                        style: TextStyle(
                            color: AppColors.secondary100,
                            fontSize: SizeMg.text(17),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
