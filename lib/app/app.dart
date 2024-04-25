import 'package:batch_32b/screen/arithmetic_screen.dart';
import 'package:batch_32b/screen/column_screen.dart';
import 'package:batch_32b/screen/dashbord_screen.dart';
import 'package:batch_32b/screen/hello_world_screen.dart';
import 'package:batch_32b/screen/mathematical_screen.dart';
import 'package:batch_32b/screen/simple_interest_screen.dart';
import 'package:batch_32b/screen/three_button.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Mathematical(),
    );
  }
}
