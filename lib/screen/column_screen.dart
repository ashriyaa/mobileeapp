
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,//top ma huna lai start
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
    
          ],
        ),
      ),
    );
  }
}
