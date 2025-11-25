import 'package:flutter/material.dart';
import 'package:sdui_stac/default_stac_options.dart';
import 'package:stac/stac.dart';

void main() {
  Stac.initialize(options: defaultStacOptions);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Stac(routeName: 'home_screen'),
    );
  }
}
