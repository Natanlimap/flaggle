/// `FlaggleService` manages the flags for feature toggling.
class FlaggleService {
  final List<String> _activeFlags;

  /// Creates a new instance of [FlaggleService].
  ///
  /// [_activeFlags] is a List of active feature flags.
  FlaggleService(this._activeFlags);

  /// Checks if a feature is enabled.
  ///
  /// Returns `true` if the feature is enabled, `false` otherwise.
  bool isFeatureEnabled(String flagName) {
    return _activeFlags.contains(flagName);
  }
}
