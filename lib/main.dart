import 'package:flutter/material.dart';

import 'package:eatApp/src/screens/static/page_not_found.dart';
import 'package:eatApp/src/routes/routes_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eat App',
      debugShowCheckedModeBanner: false,
      routes: getApplicationsRoutes(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => PageNotFound());
      },
    );
  }
}
