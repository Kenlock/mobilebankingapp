import 'package:flutter/cupertino.dart';
import 'package:mobilebanking/business_logic/models/account.dart';
import 'package:mobilebanking/business_logic/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user;

  List<Account> _accounts = [];

  User get getUser => _user;

  List<Account> get getAccounts => _accounts;
}
