import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/widgets/section.dart';
import 'package:auto_e_invoice/ui/widgets/outline_button.dart';
import 'package:auto_e_invoice/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ProfessionalDetailsPage extends StatelessWidget {
  const ProfessionalDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Professional Details",
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
              Text(
                "Company Profile",
                style: AppTextStyles.h2(),
              ),
              SizedBox(
                height: SizeMg.height(10),
              ),
              const Section(
                title: "PAN Number",
                isHint: true,
                hintText: "Enter PAN",
              ),
              const Section(
                title: "Name",
                isHint: true,
                hintText: "Enter Name",
              ),
              const Section(
                title: "Email ID",
                isHint: true,
                hintText: "Enter Email ID",
              ),
              const Section(
                title: "Contact No",
                isHint: true,
                hintText: "+91 *********",
              ),
              const Section(title: "Designation"),
              const Section(
                title: "Date of Birth",
                isHint: true,
                hintText: "Enter Date of Birth",
              ),
              const Section(
                title: "Place of birth",
                isHint: true,
                hintText: "Delhi",
              ),
              const Section(
                title: "Mother's Name",
                isHint: true,
                hintText: "Enter Mother's Name",
              ),
              const Section(
                title: "Father's Name",
                isHint: true,
                hintText: "Enter Father's Name",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PrimaryOutlineButton(title: "Dismiss Changes"),
                  SizedBox(
                    width: SizeMg.width(10),
                  ),
                  const PrimaryButton(title: "Save & Next"),
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
