import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/widgets/section.dart';
import 'package:auto_e_invoice/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AddCustomerPage extends StatelessWidget {
  const AddCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: Text(
          "Manage Customer",
          style: AppTextStyles.h2().copyWith(color: AppColors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeMg.width(25), vertical: SizeMg.height(20)),
            color: AppColors.black,
            child: Column(
              children: [
                const PrimaryButton(title: "Add New"),
                SizedBox(
                  height: SizeMg.height(4),
                ),
                const Section(
                    title: "Customer Name",
                    isHint: true,
                    hintText: "Customer Name"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.primary100,
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(SizeMg.width(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SI: 0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Purchase Date: 0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Purchase Invoice ID: 0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Purchase Status: pending",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Supplier Name: 9876543215",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Supplier Invoice Date: 12-04-2022",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Reference No: 2345",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Total: \$100",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Paid: \$0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Due: \$0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Payment Status: Paid",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
