import 'package:flutter/material.dart';
import 'package:my_app/app/locator.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/partial_builds/partial_builds_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      home: HomeView(),
      home: PartialBuildsView(),
//       initialRoute: Routes.startupView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
