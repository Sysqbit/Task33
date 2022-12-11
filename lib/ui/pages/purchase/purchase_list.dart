import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/widgets/section.dart';
import 'package:auto_e_invoice/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class PurchaseListPage extends StatelessWidget {
  const PurchaseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: Text(
          "Purchase List",
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "From 01/07/2021 To 31/07/2021",
                        style: AppTextStyles.h4()
                            .copyWith(color: AppColors.primary100),
                      ),
                    ),
                    const Expanded(
                        child: PrimaryButton(title: "New Sales Return")),
                  ],
                ),
                SizedBox(
                  height: SizeMg.height(4),
                ),
                const Section(
                  title: "Sales",
                ),
                const Section(
                  title: "Sales",
                ),
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
                              "Sales Date: 0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Return Date Time: 0",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Sales Status: test@gmail.com",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Customer Name: 9876543215",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Reference Number: Pune Kharadi",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Total: www.demo.com",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Paid: www.demo.com",
                              style: AppTextStyles.h4(),
                            ),
                            SizedBox(height: SizeMg.height(5)),
                            Text(
                              "Payment Status: www.demo.com",
                              style: AppTextStyles.h4(),
                            ),
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
