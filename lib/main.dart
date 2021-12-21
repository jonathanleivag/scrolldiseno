import 'package:flutter/material.dart';
import 'package:scrolldiseno/screens/scroll_diseno.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_diseno',
      routes: {
        'scroll_diseno': (_) => const ScrollDiseno(),
      },
    );
  }
}
