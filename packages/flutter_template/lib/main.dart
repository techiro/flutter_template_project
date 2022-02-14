import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/l10n/l10n.dart';
import 'package:flutter_template/routes/main_router.gr.dart';
import 'package:flutter_template/theme/theme_data_ex.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  final _mainRouter = MainRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdaptiveTheme(
      light: ThemeDataEx.customLight(),
      dark: ThemeDataEx.customDark(),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        routeInformationParser: _mainRouter.defaultRouteParser(),
        routerDelegate: _mainRouter.delegate(),
        title: 'Flutter Demo',
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        theme: theme,
        darkTheme: darkTheme,
      ),
    );
  }
}
