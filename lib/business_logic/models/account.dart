import 'package:flutter/cupertino.dart';

class Account {
  final String accountNumber;
  final String accountType;
  final String productCode;
  final String currencyCode;
  final double bookBalance;
  final double availableBalance;

  Account({
    @required this.accountNumber,
    @required this.accountType,
    @required this.productCode,
    @required this.currencyCode,
    @required this.bookBalance,
    @required this.availableBalance,
  });

  factory Account.fromJson(Map<String, dynamic> data) {
    return Account(
      accountNumber: data['accountNumber'],
      accountType: data['accountType'],
      productCode: data['productCode'],
      currencyCode: data['currencyCode'],
      bookBalance: data['bookBalance'],
      availableBalance: data['availableBalance'],
    );
  }
}
