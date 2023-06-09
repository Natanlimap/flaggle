import 'package:flaggle/flaggle.dart';
import 'package:flutter/material.dart';

/// `Flaggle` widget controls the visibility of its child widget based on a feature flag.
class Flaggle extends StatelessWidget {
  final String flag;
  final Widget child;

  /// Creates a new instance of [Flaggle].
  ///
  /// [flag] is the name of the feature flag.
  /// [child] is the widget that will be shown or hidden based on the feature flag.
  Flaggle({
    Key? key,
    required this.flag,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final flaggleService = FlaggleProvider.of(context);

    return Visibility(
      visible: flaggleService.isFeatureEnabled(flag),
      child: child,
    );
  }
}
