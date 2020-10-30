import 'package:flutter/cupertino.dart';
import 'package:mobilebanking/business_logic/models/quick_service_model.dart';

class AppProvider extends ChangeNotifier {
  bool _isDarkTheme = false;
  List<QuickService> _quickServices = [
    QuickService(
      id: 'accounts',
      label: 'Accounts',
      route: '/accounts',
      imageUrl: 'assets/icons/accounts.svg',
    ),
    QuickService(
      id: 'fund-transfer',
      label: 'Fund Transfer',
      route: '/fund-transfer',
      imageUrl: 'assets/icons/transfer.svg',
    ),
    QuickService(
      id: 'cards',
      label: 'Cards',
      route: '/cards',
      imageUrl: 'assets/icons/card-service.svg',
    ),
    QuickService(
      id: 'momo',
      label: 'Mobile Money',
      route: '/mobile-money',
      imageUrl: 'assets/icons/momo.svg',
    ),
    QuickService(
      id: 'airtime-topup',
      label: 'Airtime Topup',
      route: '/airtime-topup',
      imageUrl: 'assets/icons/airtime.svg',
    ),
  ];

  bool get isDarkTheme => _isDarkTheme;

  List<QuickService> get quickServices => _quickServices;

  void updateThemeMode(bool value) {
    this._isDarkTheme = value;
    notifyListeners();
  }

  void updateQuickServiceVisibility(String quickServiceId, bool visibility) {}

  void init() {}

  List<QuickService> _getQuickServices() {
    this._quickServices = [
      QuickService(
        id: 'accounts',
        label: 'Accounts',
        route: '/accounts',
        imageUrl: 'assets/icons/accounts.svg',
      ),
      QuickService(
        id: 'fund-transfer',
        label: 'Fund Transfer',
        route: '/fund-transfer',
        imageUrl: 'assets/icons/transfer.svg',
      ),
      QuickService(
        id: 'cards',
        label: 'Cards',
        route: '/cards',
        imageUrl: 'assets/icons/card-service.svg',
      ),
      QuickService(
        id: 'momo',
        label: 'Mobile Money',
        route: '/mobile-money',
        imageUrl: 'assets/icons/momo.svg',
      ),
      QuickService(
        id: 'airtime-topup',
        label: 'Airtime Topup',
        route: '/airtime-topup',
        imageUrl: 'assets/icons/airtime.svg',
      ),
    ];
  }
}
