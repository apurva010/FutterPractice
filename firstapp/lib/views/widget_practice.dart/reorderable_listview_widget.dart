import 'package:flutter/material.dart';

class ReorderableListViewWidgetExample extends StatefulWidget {
  const ReorderableListViewWidgetExample({super.key});

  @override
  State<ReorderableListViewWidgetExample> createState() =>
      _ReorderableListViewWidgetExampleState();
}

class _ReorderableListViewWidgetExampleState
    extends State<ReorderableListViewWidgetExample> {
  final List<int> items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Reorderable ListView"),
        ),
        body: ReorderableListView(
          children: List.generate(
            items.length,
            (index) => ListTile(
              key: Key('$index'),
              tileColor: items[index].isOdd ? Colors.white12 : Colors.white38,
              title: Text('item ${items[index] + 1}'),
              trailing: const Icon(Icons.drag_handle_sharp),
            ),
          ),
          onReorder: (int oldIndex, int newIndex) {
            setState(
              () {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = items.removeAt(oldIndex);
                items.insert(newIndex, item);
              },
            );
          },
        ),
      ),
    );
  }
}
