import 'package:flutter/material.dart';
import 'package:flaggle/flaggle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Define the active feature flags
  final flaggleService = FlaggleService([
    'feature1',
    // 'feature2' is not in this list, so it will not be active
  ]);

  @override
  Widget build(BuildContext context) {
    return FlaggleProvider(
      flaggleService: flaggleService,
      child: MaterialApp(
        title: 'Flutter Flaggle Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Flaggle Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
            ),
            // Wrap the feature with a Flaggle
            Flaggle(
              flag: 'feature1',
              child: Text(
                'This text is visible because feature1 is active.',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Flaggle(
              flag: 'feature2',
              child: Text(
                'This text is NOT visible because feature2 is not active.',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
