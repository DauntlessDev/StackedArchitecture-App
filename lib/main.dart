import 'package:flutter/material.dart';
import 'package:stacked_architecture_app/app/locator.dart';
import 'package:stacked_architecture_app/ui/views/stream_example/stream_example_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked Architecture',
      // initialRoute: Routes.startupViewRoute,
      home: StreamExampleView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
