import 'package:flutter/material.dart';
import 'package:challenge_final/src/pages/error_page.dart';
import 'package:challenge_final/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return ErrorPage();
        });
      },
    );
  }
}
