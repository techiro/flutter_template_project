import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/routes/second_router.dart';
import 'package:flutter_template/widgets/home/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<HomePage>(page: HomePage, initial: true),
    secondRoute,
  ],
)
class $MainRouter {}
