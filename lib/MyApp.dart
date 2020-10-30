import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobilebanking/main.dart';
import 'package:mobilebanking/utils/AppTheme.dart';
import 'package:mobilebanking/utils/my_router.dart';
import 'package:mobilebanking/utils/urls.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final appState = watch(appBlocProvider).state;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mobile Banking',
          theme:
              appState.isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
          onGenerateRoute: MyRouter.generateRoute,
          initialRoute: INTRO_SCREEN_ROUTE,
        );
      },
    );
  }
}
