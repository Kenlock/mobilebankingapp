import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobilebanking/MyApp.dart';
import 'package:mobilebanking/business_logic/providers/app_provider.dart';

final appBlocProvider = StateProvider<AppProvider>((ref) {
  return AppProvider();
});

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
