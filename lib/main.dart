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

      // Add named routes here
      routes: {
        '/first_screen': (context) => const Stac(routeName: 'first_screen'),
        '/second_screen': (context) => const DemoPage(title: 'Second Screen'),
       
      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // Default screen
      home: const Stac(routeName: 'first_screen'),
    );
  }
}

// Simple demo screen
class DemoPage extends StatelessWidget {
  final String title;
  const DemoPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}
