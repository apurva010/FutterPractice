import 'package:firstapp/views/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController data = TextEditingController();
  FocusNode txt = FocusNode();

  List<String> item = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
            centerTitle: true,
            backgroundColor: Colors.cyan,
          ),
          body: Column(
            children: [
              TextField(
                autofocus: true,
                controller: data,
                focusNode: txt,
                decoration: const InputDecoration(hintText: "Enter String"),
                onSubmitted: (text) {
                  data.clear();
                  txt.requestFocus();
                  setState(() {
                    item.add(text);
                  });
                },
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: item.length,
                    itemBuilder: ((context, index) {
                      return Text(item[index]);
                    })),
              )
            ],
          )),
    );
  }
}
