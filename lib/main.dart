import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/cart_provider.dart';

import 'package:shopping_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
                brightness: Brightness.light,
                seedColor: const Color.fromRGBO(254, 206, 1, 1),
                primary: Color.fromRGBO(254, 206, 1, 1)),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              titleSmall: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )),
        title: 'Shopping App',
        home: Provider(create: (context) => 'Hello!', child: HomePage()),
      ),
    );
  }
}
