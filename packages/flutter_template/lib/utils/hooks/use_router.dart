import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

StackRouter useRouter() {
  // HookWidgetのbuild内でBuildContextを取得
  final context = useContext();
  return AutoRouter.of(context);
}
