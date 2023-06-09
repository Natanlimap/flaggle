import 'package:flaggle/flaggle.dart';
import 'package:flutter/material.dart';

/// `FlaggleProvider` makes [FlaggleService] accessible to widgets in the tree.
class FlaggleProvider extends InheritedWidget {
  final FlaggleService flaggleService;

  /// Creates a new instance of [FlaggleProvider].
  ///
  /// [flaggleService] is the service that manages the feature flags.
  /// [child] is the widget below this widget in the tree.
  FlaggleProvider({
    required this.flaggleService,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  /// Provides a way for widgets to access the feature flag service.
  static FlaggleService of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<FlaggleProvider>()!
      .flaggleService;
}
