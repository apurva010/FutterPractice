import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreferredSizeWidgetExample extends StatefulWidget {
  const PreferredSizeWidgetExample({super.key});

  @override
  State<PreferredSizeWidgetExample> createState() =>
      _PreferredSizeWidgetExampleState();
}

class _PreferredSizeWidgetExampleState
    extends State<PreferredSizeWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Container(
            height: 120,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.black12],
              ),
            ),
            child: const Center(
              child: ListTile(
                title: Text("App bar"),
                leading: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                textColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
