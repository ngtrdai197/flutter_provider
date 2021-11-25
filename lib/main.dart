import 'package:flutter/material.dart';
import 'package:flutter_provider/constants/app_routes.dart';
import 'package:flutter_provider/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => ProductProvider(),
      )
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routing.HOME_PAGE,
      routes: Routing.buildRoutes(),
    );
  }
}
