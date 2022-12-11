import 'package:auto_e_invoice/ui/pages/Sales/add_customer.dart';
import 'package:auto_e_invoice/ui/pages/Sales/credit_note.dart';
import 'package:auto_e_invoice/ui/pages/Sales/delivery_chalan.dart';
import 'package:auto_e_invoice/ui/pages/Sales/export.dart';
import 'package:auto_e_invoice/ui/pages/Sales/fixed_assets.dart';
import 'package:auto_e_invoice/ui/pages/Sales/performa_invoice_page.dart';
import 'package:auto_e_invoice/ui/pages/Sales/rcm.dart';
import 'package:auto_e_invoice/ui/pages/Sales/sales_list.dart';
import 'package:auto_e_invoice/ui/pages/Sales/stock_transfer.dart';
import 'package:auto_e_invoice/ui/pages/Sales/tax_invoice.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/company_details_page.dart';
import 'package:auto_e_invoice/ui/pages/company%20details/professional_details.dart';
import 'package:auto_e_invoice/ui/pages/dashboard_page.dart';
import 'package:auto_e_invoice/ui/pages/drawer_page.dart';
import 'package:auto_e_invoice/ui/pages/home_page.dart';
import 'package:auto_e_invoice/ui/pages/purchase/add_supplier.dart';
import 'package:auto_e_invoice/ui/pages/purchase/debit_note.dart';
import 'package:auto_e_invoice/ui/pages/purchase/purchase_list.dart';
import 'package:flutter/cupertino.dart';

class AppRouter {
  static const String homePage = "/";
  static const String drawerPage = "/drawer";
  static const String dashboardPage = "/dashboard";
  static const String companyDetailsPage = "/company-details";
  static const String professionalDetailsPage = "/professional-details";
  static const String performaInvoicePage = "/performa-invoice";
  static const String taxInvoicePage = "/tax-invoice";
  static const String exportInvoicePage = "/export-invoice";
  static const String deliveryChalanPage = "/delivery-chalan-invoice";
  static const String rcmPage = "/rcm-invoice";
  static const String stockTransferPage = "/stock-transfer-invoice";
  static const String fixedAssetsPage = "/fixed-assets-invoice";
  static const String addCustomerPage = "/add-customer";
  static const String creditNotePage = "/credit-note";
  static const String salesListPage = "/sales-list";
  static const String addSupplierPage = "/add-supplier";
  static const String debitNotePage = "/debit-note";
  static const String purchaseListPage = "/purchase-list";

  AppRouter._();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return CupertinoPageRoute(builder: ((context) => const HomePage()));
      case drawerPage:
        return CupertinoPageRoute(builder: ((context) => const DrawerPage()));
      case dashboardPage:
        return CupertinoPageRoute(builder: (context) => const DashboardPage());
      case companyDetailsPage:
        return CupertinoPageRoute(
            builder: (context) => const CompanyDetailsPage());
      case professionalDetailsPage:
        return CupertinoPageRoute(
            builder: (context) => const ProfessionalDetailsPage());
      case performaInvoicePage:
        return CupertinoPageRoute(
            builder: (context) => const PerformaInvoicePage());
      case taxInvoicePage:
        return CupertinoPageRoute(builder: (context) => const TaxInvoicePage());
      case exportInvoicePage:
        return CupertinoPageRoute(
            builder: (context) => const ExportInvoicePage());
      case deliveryChalanPage:
        return CupertinoPageRoute(
            builder: (context) => const DeliveryChalanPage());
      case rcmPage:
        return CupertinoPageRoute(builder: (context) => const RCMPage());
      case stockTransferPage:
        return CupertinoPageRoute(
            builder: (context) => const StockTransferPage());
      case fixedAssetsPage:
        return CupertinoPageRoute(
            builder: (context) => const FixedAssetsPage());
      case addCustomerPage:
        return CupertinoPageRoute(
            builder: (context) => const AddCustomerPage());
      case creditNotePage:
        return CupertinoPageRoute(builder: (context) => const CreditNotePage());
      case salesListPage:
        return CupertinoPageRoute(builder: (context) => const SalesListPage());
      case addSupplierPage:
        return CupertinoPageRoute(
            builder: (context) => const AddSupplierPage());
      case debitNotePage:
        return CupertinoPageRoute(builder: (context) => const DebitNotePage());
      case purchaseListPage:
        return CupertinoPageRoute(
            builder: (context) => const PurchaseListPage());

      default:
        throw const FormatException("Route not found");
    }
  }
}
