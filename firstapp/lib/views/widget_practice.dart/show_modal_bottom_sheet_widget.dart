import 'package:flutter/material.dart';

class ShowModalBottomSheetExample extends StatefulWidget {
  const ShowModalBottomSheetExample({super.key});

  @override
  State<ShowModalBottomSheetExample> createState() =>
      _ShowModalBottomSheetExampleState();
}

class _ShowModalBottomSheetExampleState
    extends State<ShowModalBottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Modal"),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text("Open"),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 500,
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset('assets/images/p1.jpeg'),
                          ),
                          const Expanded(
                            flex: 2,
                            child: Text("Modal Example"),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              child: const Text("Close"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
