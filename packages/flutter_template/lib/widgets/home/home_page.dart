import 'package:auto_route/auto_route.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/l10n/l10n.dart';
import 'package:flutter_template/routes/main_router.gr.dart';
import 'package:flutter_template/utils/environment.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}

Widget flutterGenSample() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text('PNG'),
              Assets.images.sampleFlutterGen.image(
                width: 100,
                height: 100,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          Column(
            children: [
              const Text('SVG'),
              Assets.images.svgFlutterIcon.svg(width: 100, height: 100),
            ],
          ),
        ],
      ),
      // SVG対応
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Raleway',
                style: TextStyle(fontFamily: 'Raleway', fontSize: 30)),
            Text('SystemFont',
                style: TextStyle(fontFamily: 'SystemFont', fontSize: 30)),
          ],
        ),
      ),
      const Text('flavor: ${Environment.flavor}'),
      const Text(
          'PREVIEW: ${(Environment.enablePreview == 'true') ? 'true' : 'false'}'),
    ],
  );
}

Widget l10nTextWidget(L10n l10n) {
  return Column(children: [
    Text(l10n.helloUserName('sample Name')),
    Text(l10n.localeName),
  ]);
}
