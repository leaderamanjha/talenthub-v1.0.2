import 'package:flutter/material.dart';

class AuthProvider extends InheritedWidget {
  final String authToken;
  final Widget child;

  AuthProvider({
    required this.authToken,
    required this.child,
    Key? key,
  }) : super(key: key, child: child);

  static AuthProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // This method should return true if the data provided by this
    // InheritedWidget should trigger a rebuild of its descendants.
    return true;
  }
}
