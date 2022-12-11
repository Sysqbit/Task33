import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/pages/drawer_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.gray400,
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Home/Dashboard',
          style: theme.textTheme.headline2,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.gray400,
            padding: EdgeInsets.symmetric(
                horizontal: SizeMg.width(25), vertical: SizeMg.height(7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Assessment Year',
                  style:
                      AppTextStyles.h3().copyWith(fontWeight: FontWeight.w900),
                ),
                SizedBox(height: SizeMg.height(3)),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "2022 - 2023 [01 -04 - 2021 to 31 - 03 - 2022] ",
                      style: AppTextStyles.h6(),
                    ),
                    TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: "Change",
                        style: AppTextStyles.h6()
                            .copyWith(color: AppColors.secondary100)),
                  ]),
                ),
                SizedBox(height: SizeMg.height(3)),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "New Client Work ",
                      style: AppTextStyles.h6(),
                    ),
                    TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: "Change",
                        style: AppTextStyles.h6()
                            .copyWith(color: AppColors.secondary100)),
                  ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.white),
                    // height: 40,
                    // width: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: SizeMg.height(10)),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeMg.width(15),
                              vertical: SizeMg.height(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\$0",
                                style: theme.textTheme.headline2!
                                    .copyWith(color: AppColors.black),
                              ),
                              SizedBox(height: SizeMg.height(15)),
                              Text(
                                "Total Customers Due Amount",
                                style: theme.textTheme.headline3!
                                    .copyWith(color: AppColors.black),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: SizeMg.height(10)),
                        Container(
                          width: double.infinity,
                          height: 30,
                          color: AppColors.gray500,
                          child: Center(
                            child: Text(
                              'More Info -->',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headline5!
                                  .copyWith(color: AppColors.gray200),
                            ),
                          ),
                        )
                      ],
                    ),
                    // color: AppColors.secondary100,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
