import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_template/l10n/l10n.dart';
import 'package:flutter_template/routes/main_router.gr.dart';
import 'package:flutter_template/theme/theme_data_ex.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Fimber
  if (!kReleaseMode) {
    Fimber.plantTree(DebugTree());
  } else {
    // リリースの時はログ無効化
    debugPrint = (message, {wrapWidth}) {};
  }

  runZonedGuarded(() {
    runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const ProviderScope(child: MyApp()),
      ),
    );
  }, (error, stackTrace) {
    Fimber.e(error.toString());
  });
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //useMemoizedしないと、ホットリロード時に、画面が読み込まれない。
    final mainRouter = useMemoized<MainRouter>(MainRouter.new);
    return AdaptiveTheme(
      light: ThemeDataEx.customLight(),
      dark: ThemeDataEx.customDark(),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        routeInformationParser: mainRouter.defaultRouteParser(),
        routerDelegate: mainRouter.delegate(),
        title: 'Flutter Demo',
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        theme: theme,
        darkTheme: darkTheme,
      ),
    );
  }
}
