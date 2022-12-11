import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/widgets/section.dart';
import 'package:auto_e_invoice/ui/widgets/outline_button.dart';
import 'package:auto_e_invoice/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class PerformaInvoicePage extends StatelessWidget {
  const PerformaInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Performa Invoice",
          style: AppTextStyles.h2().copyWith(color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: SizeMg.width(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeMg.height(20),
              ),
              const Section(title: "Customer Name"),
              const Section(title: "Sales Date"),
              const Section(title: "Status"),
              const Section(title: "Reference No./PO. Order No."),
              const Section(title: "Invoice ID"),
              const Section(title: "Payment Type"),
              const Section(title: "Different Shipping Details"),
              const Section(title: "Dispatch Through"),
              const Section(title: "E-way Bill Applicable"),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PrimaryOutlineButton(title: "ADD NEW SERVICE"),
                  SizedBox(
                    width: SizeMg.width(10),
                  ),
                  const PrimaryButton(title: "ADD NEW ITEM"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
