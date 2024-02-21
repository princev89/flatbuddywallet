import 'package:flutter/material.dart';
import 'package:flatbuddywallet/presentation/ad_hoc_reporting_screen/ad_hoc_reporting_screen.dart';
import 'package:flatbuddywallet/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:flatbuddywallet/presentation/expense_tracking_screen/expense_tracking_screen.dart';
import 'package:flatbuddywallet/presentation/budgeting_forecasting_screen/budgeting_forecasting_screen.dart';
import 'package:flatbuddywallet/presentation/email_login_screen/email_login_screen.dart';
import 'package:flatbuddywallet/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String adHocReportingScreen = '/ad_hoc_reporting_screen';

  static const String accountCreationScreen = '/account_creation_screen';

  static const String expenseTrackingScreen = '/expense_tracking_screen';

  static const String budgetingForecastingScreen =
      '/budgeting_forecasting_screen';

  static const String emailLoginScreen = '/email_login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        adHocReportingScreen: AdHocReportingScreen.builder,
        accountCreationScreen: AccountCreationScreen.builder,
        expenseTrackingScreen: ExpenseTrackingScreen.builder,
        budgetingForecastingScreen: BudgetingForecastingScreen.builder,
        emailLoginScreen: EmailLoginScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: EmailLoginScreen.builder,
      };
}
