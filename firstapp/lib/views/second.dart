import 'package:firstapp/views/first.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  bool flag = true;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
            centerTitle: true,
            backgroundColor: Colors.cyan,
          ),
          body: Center(
              child: SizedBox(
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: flag ? Colors.black87 : Colors.blue,
              ),
              onPressed: (() {
                setState(() {
                  flag = !flag;
                });
              }),
              child: Text(flag ? "Black" : "Blue"),
            ),
          ))),
    );
  }
}
