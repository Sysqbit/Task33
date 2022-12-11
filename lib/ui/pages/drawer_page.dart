import 'package:auto_e_invoice/config/router/app_routes.dart';
import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:auto_e_invoice/ui/widgets/adaptive/drawer_submenu.dart';
import 'package:auto_e_invoice/ui/pages/Sales/widget/sales_dialog.dart';
import 'package:auto_e_invoice/ui/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Drawer(
      backgroundColor: AppColors.primary100,
      width: SizeMg.width(250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.secondary100,
              height: height * 0.2,
            ),
            DrawerMenu(
                isOnTap: false,
                firstChildWidget: Container(),
                onTap: () => Navigator.of(context).pop(),
                text: "Dashboard",
                leadingIcon: Icons.space_dashboard),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Column(
                children: [
                  DrawerSuMenu(
                      subtitleOnTap: () {
                        salesAlertDialog(context, height);
                      },
                      text: "Add Sales/Service",
                      leadingIcon: Icons.view_compact_alt_rounded),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.salesListPage),
                      text: "List of Sales/Service",
                      leadingIcon: Icons.list_alt_sharp),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.creditNotePage),
                      text: "Credit Note (Return)",
                      leadingIcon: Icons.credit_card),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.addCustomerPage),
                      text: "Add Debtor/(Customer)",
                      leadingIcon: Icons.deblur),
                ],
              ),
              isOnTap: true,
              onTap: () {},
              text: "Sales",
              leadingIcon: Icons.track_changes_outlined,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Column(
                children: [
                  DrawerSuMenu(
                      subtitleOnTap: () => salesAlertDialog(context, height),
                      text: "Add Purchase",
                      leadingIcon: Icons.view_compact_alt_rounded),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.purchaseListPage),
                      text: "List of Purchase",
                      leadingIcon: Icons.list_alt_sharp),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.addSupplierPage),
                      text: "Add Creditors (Supplier) ",
                      leadingIcon: Icons.credit_card),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.debitNotePage),
                      text: "Debit Note (Return)",
                      leadingIcon: Icons.deblur),
                ],
              ),
              isOnTap: true,
              onTap: () {},
              text: "Purchase",
              leadingIcon: Icons.production_quantity_limits,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Container(),
              onTap: () {},
              text: "Item/Services",
              leadingIcon: Icons.sell_rounded,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Container(),
              onTap: () {},
              text: "Bank/Cash",
              leadingIcon: Icons.money,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Payment",
                leadingIcon: Icons.payment),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Receipt",
                leadingIcon: Icons.receipt),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Category",
                leadingIcon: Icons.category),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Settings",
                leadingIcon: Icons.settings),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Container(),
              onTap: () {},
              text: "Report",
              leadingIcon: Icons.report,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Column(
                children: [
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.companyDetailsPage),
                      text: "Company Details",
                      leadingIcon: Icons.precision_manufacturing_outlined),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () => Navigator.of(context)
                          .pushNamed(AppRouter.professionalDetailsPage),
                      text: "Professional Details",
                      leadingIcon: Icons.admin_panel_settings_sharp),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () {},
                      text: "Director Details",
                      leadingIcon: Icons.badge),
                  const Divider(),
                  DrawerSuMenu(
                      subtitleOnTap: () {},
                      text: "Share Holder",
                      leadingIcon: Icons.work_history_outlined),
                ],
              ),
              isOnTap: true,
              onTap: () {},
              text: "Company Details",
              leadingIcon: Icons.badge,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Container(),
              onTap: () {},
              text: "Wallet",
              leadingIcon: Icons.wallet,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Container(),
              onTap: () {},
              text: "Return",
              leadingIcon: Icons.assignment_return_sharp,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Ask a query",
                leadingIcon: Icons.query_stats),
            const Divider(),
            DrawerMenu(
              firstChildWidget: Container(),
              onTap: () {},
              text: "Help & Support",
              leadingIcon: Icons.help,
              trailing: Icons.keyboard_arrow_right_outlined,
            ),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "FAQ",
                leadingIcon: Icons.home_repair_service_sharp),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Our Services",
                leadingIcon: Icons.electrical_services),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Refer & Earn",
                leadingIcon: Icons.card_giftcard),
            const Divider(),
            DrawerMenu(
                firstChildWidget: Container(),
                onTap: () {},
                text: "Rate this app",
                leadingIcon: Icons.star),
          ],
        ),
      ),
    );
  }
}
