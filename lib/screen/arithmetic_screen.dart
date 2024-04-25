import 'package:batch_32b/model/arithmetic_model.dart';
import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  final myKey = GlobalKey<FormState>();
  int result = 0;
  int? num1;
  int? num2;

  ArithmeticModel? arithmeticModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.lightGreen[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: myKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter the first number';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    num1 = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Enter number 1',
                      border: OutlineInputBorder())),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter second number';
                  }
                  return null;
                },
                onChanged: (value) {
                  num2 = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter number 2', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        arithmeticModel =
                            ArithmeticModel(first: num1!, second: num2!);
                        result = arithmeticModel!.add();
                      });
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        result = num1! - num2!;
                      });
                    }
                  },
                  child: const Text(
                    'Sub',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
