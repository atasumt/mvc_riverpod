import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/interceptor/provider_interceptor.dart';
import 'package:riverpod_mvc/core/settings/settings.dart';
import 'package:riverpod_mvc/core/theme/light_theme.dart';
import 'package:riverpod_mvc/core/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Settings().onInit();

  runApp(
    ProviderScope(observers: [ProviderInterceptor()], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Settings settings = Settings();
    //settings.storage.write(key: "token", value: '');
    return MaterialApp.router(
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: 'VOCO',
      debugShowCheckedModeBanner: false,
      routeInformationParser: routerSettings.routeInformationParser,
      routeInformationProvider: routerSettings.routeInformationProvider,
      routerDelegate: routerSettings.routerDelegate,
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Theme(
              data: lightTheme(
                context,
              ),
              child: Overlay(initialEntries: [
                OverlayEntry(
                    builder: (context) => GestureDetector(
                        onTap: () {
                          WidgetsBinding.instance.focusManager.primaryFocus
                              ?.unfocus();
                        },
                        child: widget!))
              ])),
        );
      },
    );
  }
}
