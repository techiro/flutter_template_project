import 'package:flutter/material.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/l10n/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Template'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flutterGenSample(),
            l10nTextWidget(L10n.of(context)!),
          ],
        ),
      ),
    );
  }
}

Widget flutterGenSample() {
  return Column(
    children: [
      // 3種類の表現方法
      Assets.images.sampleFlutterGen.image(
        width: 100,
        height: 100,
        fit: BoxFit.scaleDown,
      ),
      Image(image: Assets.images.sampleFlutterGen, width: 100, height: 100),
      Image.asset(Assets.images.sampleFlutterGen.path, width: 100, height: 100),
      // SVG対応
      Assets.images.svgFlutterIcon.svg(width: 100, height: 100),
      const Text('Raleway', style: TextStyle(fontFamily: 'Raleway')),
      const Text('SystemFont'),
    ],
  );
}

Widget l10nTextWidget(L10n l10n) {
  return Column(children: [
    Text(l10n.helloUserName('sample Name')),
    Text(l10n.localeName),
  ]);
}
