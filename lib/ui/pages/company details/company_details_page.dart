import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/styles/text_styles/app_text_styles.dart';
import 'package:auto_e_invoice/config/utils/inputs.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/widgets/section.dart';
import 'package:auto_e_invoice/ui/widgets/outline_button.dart';
import 'package:auto_e_invoice/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class CompanyDetailsPage extends StatelessWidget {
  const CompanyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Company Details",
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
              const Section(title: "Propritor/Company PAN"),
              const Section(title: "Business Type"),
              const Section(title: "Company Name"),
              const Section(title: "Contact Person"),
              const Section(title: "Nature of Company"),
              const Section(title: "CIN/Registration Number"),
              const Section(title: "Date of Incorporate"),
              const Section(title: "Company GSTIN"),
              const Section(title: "Type of Gst Registration"),
              const Section(title: "GSTIN Registration Date"),
              const Section(title: "State Name"),
              const Section(title: "GST e-KYC Verified?"),
              const Section(title: "GST Aadhaar Authenticated?"),
              const Section(title: "Company Mobile"),
              const Section(title: "Company Email"),
              const Section(title: "Company Landline No"),
              const Section(title: "Company Address"),
              const Section(title: "Company Capital"),
              const Section(title: "Company authorized Capital"),
              const Section(title: "Have Rent Agreement?"),
              const Section(title: "Rent Agreement Validity From"),
              const Section(title: "Rent Agreement Validity To"),
              const Section(title: "TAN No"),
              const Section(title: "TAN Registration Date"),
              const Section(title: "PF No"),
              const Section(title: "PF Registration Date"),
              const Section(title: "ESI No"),
              const Section(title: "ESI Registration Date"),
              const Section(title: "ISO No"),
              const Section(title: "ISO Registration Date"),
              const Section(title: "ISO Expiry Date"),
              const Section(title: "Trademark"),
              const Section(title: "Trademark Registration Date"),
              const Section(title: "Trademark Expiry Date"),
              const Section(title: "IEC Code"),
              const Section(title: "IEC Code Registration Date"),
              const Section(title: "FSSI No"),
              const Section(title: "FSSI No Registration Date"),
              const Section(title: "FSSI No Expiry Date"),
              const Section(title: "MSME No"),
              const Section(title: "MSME No Registration Date"),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PrimaryOutlineButton(title: "Close"),
                  SizedBox(
                    width: SizeMg.width(10),
                  ),
                  const PrimaryButton(title: "Edit Profile"),
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
