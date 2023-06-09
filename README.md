# Flaggle

A dynamic solution for managing the visibility of features in your Flutter application. Flaggle allows developers to easily toggle features on and off in the app, enhancing the control over the application's behavior. With Flaggle, you can experiment with new features in production without affecting all users, perform A/B testing, or simply enable or disable parts of your app for maintenance or user roles. Simplify your feature management with Flaggle - your codebase will thank you!
## Getting Started

Add `flaggle` to your `pubspec.yaml` file:

```yaml
dependencies:
  flaggle: ^0.0.1
```

Run `flutter pub get` to fetch the package.

## Usage

First, create a `FlaggleService` with your active feature flags and provide it to your widget tree with `FlaggleProvider`:

```dart
final flaggleService = FlaggleService(['feature1']);
  
FlaggleProvider(
  flaggleService: flaggleService,
  child: MaterialApp(),
)
```

Then, you can control the visibility of widgets with the `Flaggle` widget:

```dart
Flaggle(
  flag: 'feature1',
  child: Text('This text is visible because feature1 is active.'),
)
```

If 'feature1' is active, the text widget will be visible; otherwise, it will not be.

See the `example.dart` file for a complete example.

## Contributing

Contributions are welcome! If you find a bug or want a feature, open an issue. If you want to contribute code, open a pull request.

