import 'package:flutter/material.dart';
import 'package:mobilebanking/ui/screens/IntroScreen.dart';
import 'package:mobilebanking/ui/screens/fund-transfer/momo/MomoVerifyScreen.dart';
import 'package:mobilebanking/ui/screens/screens.dart';
import 'package:mobilebanking/utils/urls.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var name = settings.name;

    Widget screen;

    switch (name) {
      case ON_BOARDING_ROUTE:
        screen = OnBoardingScreen();
        break;
      case SPLASH_SCREEN_ROUTE:
        screen = SplashScreen();
        break;
      case HOME_ROUTE:
        screen = HomeScreen();
        break;
      case LOGIN_ROUTE:
        screen = LoginScreen();
        break;

      // My Acccount ROUTES
      case MY_ACCOUNTS_ROUTE:
        screen = MyAccountsScreen();
        break;

      case TRANSACTION_HISTORY_ROUTE:
        screen = TransactionHistoryScreen();
        break;

      case TRANSACTION_DETAILS_ROUTE:
        screen = AccountSummaryScreen();
        break;

      // LOANS ROUTES
      case LOANS_ROUTE:
        screen = LoansScreen();
        break;

      // TERM DEPOSITS
      case TERM_DEPOSITS_ROUTE:
        screen = TermDepositsScreen();
        break;

      // TRANSFERS ROUTES
      case TRANSFERS_ROUTE:
        screen = FundTransferScreen();
        break;

      case OWN_ACCOUNT_TRANSFER_ROUTE:
        screen = OwnAccountTransferScreen();
        break;

      case OWN_ACCOUNT_TRANSFER_CONFIRM_ROUTE:
        screen = OwnAccountTransferConfirmScreen();
        break;

      case INTERNAL_TRANSFER_ROUTE:
        screen = InternalTransferScreen();
        break;

      case INTERNAL_TRANSFER_CONFIRM_ROUTE:
        screen = InternalTransferVerifyScreen();
        break;

      case INTERBANK_TRANSFER_ROUTE:
        screen = InterbankTransferScreen();
        break;

      case INTERBANK_TRANSFER_CONFIRM_ROUTE:
        screen = InterbankTransferVerifyScreen();
        break;

      case MOBILE_MONEY_ROUTE:
        screen = MomoScreen();
        break;

      case MOMO_CONFIRM_ROUTE:
        screen = MomoVerifyScreen();
        break;

      case STANDING_INSTRUCTIONS_ROUTE:
        screen = StandingInstructionsScreen();
        break;

      case NEW_STANDING_INSTRUCTIONS_ROUTE:
        screen = NewStandingInstructionScreen();
        break;

      case CONFIRM_STANDING_INSTRUCTION_ROUTE:
        screen = ConfirmStandingInstructionScreen();
        break;

      case CLOSE_STANDING_INSTRUCTIONS_ROUTE:
        screen = CloseStandingInstructionScreen();
        break;

      case VIEW_STANDING_INSTRUCTIONS_ROUTE:
        screen = ViewStandingInstructionsScreen();
        break;

      case VIEW_STANDING_INSTRUCTION_DETAILS_ROUTE:
        screen = ViewStandingInstructionDetailsScreen();
        break;
      // CARD SERVICES SCREENS
      case CARD_SERVICES_ROUTE:
        screen = CardServicesScreen();
        break;

      case FUND_TRANSFER_ROUTE:
        screen = FundTransferScreen();
        break;

      case CARD_TRANSFER_DETAILS_ROUTE:
        screen = CardTransferDetailsScreen();
        break;

      case CARD_TRANSACTION_HISTORY_ROUTE:
        screen = CardTransactionHistoryScreen();
        break;

      case CARD_TRANSACTION_HISTORY_CONFIRM_ROUTE:
        screen = CardTransactionHistoryConfirmScreen();
        break;
      case CARD_HISTORY_PAGE_ROUTE:
        screen = CardTransactionHistoryScreen();
        break;
      case DEACTIVATE_CARD_ROUTE:
        screen = DeactivateCardScreen();
        break;

      // BILL PAYMENT ROUTES
      case BILL_PAYMENTS_ROUTE:
        screen = BillPaymentScreen();
        break;

      case AIRTIME_TOPUP_ROUTE:
        screen = AirtimeTopupScreen();
        break;

      case CONFIRM_AIRTIME_TOPUP_ROUTE:
        screen = ConfirmAirtimeTopupScreen();
        break;

      // UTILITY PAYMENT ROUTES
      case UTILITY_PAYMENT_ROUTE:
        screen = UtilityPaymentScreen();
        break;

      case AIRTIME_TOPUP_ROUTE:
        screen = AirtimeTopupScreen();
        break;

      case CONFIRM_AIRTIME_TOPUP_ROUTE:
        screen = ConfirmAirtimeTopupScreen();
        break;

      case MULTI_CHOICE_SERVICE_ROUTE:
        screen = MultiChoiceServiceScreen();
        break;

      case VIEW_MULTI_CHOICE_PRODUCTS_ROUTE:
        screen = ViewMultiChoiceProductsScreen();
        break;

      case VIEW_MULTI_CHOICE_ACCOUNT_DETAILS_ROUTE:
        screen = ViewMultiChoiceAccountDetailsScreen();
        break;

      case MAKE_MULTI_CHOICE_PAYMENT_ROUTE:
        screen = MakeMultiChoicePaymentScreen();
        break;

      case VERIFY_MULTI_CHOICE_PAYMENT_ROUTE:
        screen = VerifyMultiChoicePaymentScreen();
        break;

      // CHEQUES ROUTES
      case CHEQUES_ROUTE:
        screen = ChequesScreen();
        break;

      case STOP_CHEQUE_ROUTE:
        screen = StopChequeScreen();
        break;

      case CHEQUES_BOOK_REQUEST_ROUTE:
        screen = ChequeBookRequestScreen();
        break;

      case CONFIRM_CHEQUE_BOOK_REQUEST_ROUTE:
        screen = ConfirmChequeBookRequestScreen();
        break;

      // FOREX RATES ROUTE
      case FOREX_RATES_ROUTE:
        screen = ForexRateScreen();
        break;

      // SETTINGS ROUTE
      case SETTINGS_ROUTE:
        screen = SettingsScreen();
        break;

      case CHANGE_PASSWORD_ROUTE:
        screen = ChangePasswordScreen();
        break;

      case SECURITY_QUESTIONS_ROUTE:
        screen = SecurityQuestionsScreen();
        break;

      // CUSTOMER SERVICE ROUTE
      case CUSTOMER_SERVICE_ROUTE:
        screen = CustomerServiceScreen();
        break;

      case NOTIFICATIONS_ROUTE:
        screen = NotificationsScreen();
        break;

      case REQUESTS_AND_COMPLAINTS_ROUTE:
        screen = RequestAndComplaintsScreen();
        break;

      // QUICK SERVICES ROUTES
      case CONTACT_US_ROUTE:
        screen = ContactUsScreen();
        break;

      case FAQS_ROUTE:
        screen = FaqScreen();
        break;

      case FIND_ATMS_ROUTE:
        screen = FindAtmScreen();
        break;

      case FORGOT_PASSWORD_ROUTE:
        screen = ForgotPasswordScreen();
        break;

      case INTRO_SCREEN_ROUTE:
        screen = IntroScreen();
        break;

      default:
        screen = LoginScreen();
        break;
    }

    //return GetRouteBase(page: screen);
    //Navigator.of(context).
    return MaterialPageRoute(builder: (_) => screen);
  }
}
