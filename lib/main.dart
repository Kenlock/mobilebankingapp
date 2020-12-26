import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobilebanking/MyApp.dart';
import 'package:mobilebanking/business_logic/providers/app_provider.dart';
import 'package:mobilebanking/services/service_locator.dart';

final appBlocProvider = StateProvider<AppProvider>((ref) {
  return AppProvider();
});

void main() {
  setupServiceLocator();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
