import 'package:auto_route/auto_route.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/l10n/l10n.dart';
import 'package:flutter_template/routes/main_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Template'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Fimber.d('FloatingActionButton pressed'),
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flutterGenSample(),
            l10nTextWidget(L10n.of(context)!),
            TextButton(
              child: const Text('move to second'),
              onPressed: () {
                AutoRouter.of(context).push(const SecondRoute());
              },
            )
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
