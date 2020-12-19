import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

class WiredashApp extends StatelessWidget {
  final navigatorKey;
  final Widget child;

  const WiredashApp(
      {Key key, @required this.navigatorKey, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wiredash(
        projectId: '', //Post your Project Id
        secret: '', //Post your seceret from Wiredash
        navigatorKey: navigatorKey,
        child: child);
  }
}
