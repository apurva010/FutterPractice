import 'package:flutter/material.dart';

class CheckboxListTileWidgetExample extends StatefulWidget {
  const CheckboxListTileWidgetExample({super.key});

  @override
  State<CheckboxListTileWidgetExample> createState() =>
      _CheckboxListTileWidgetExampleState();
}

class _CheckboxListTileWidgetExampleState
    extends State<CheckboxListTileWidgetExample> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Checkbox List tile"),
        ),
        body: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    "Q.1 Multiple selection",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckboxListTile(
                  value: _isChecked,
                  title: const Text(
                    "Option 1",
                    style: TextStyle(fontSize: 18),
                  ),
                  activeColor: Colors.red,
                  tileColor: Colors.white,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
