import 'package:firstapp/views/practice/image_picker_example.dart';
import 'package:firstapp/views/practice/p1.dart';
import 'package:firstapp/views/second.dart';
import 'package:firstapp/views/third.dart';
import 'package:firstapp/views/widget_practice.dart/checkbox_listtile_widget.dart';
import 'package:firstapp/views/widget_practice.dart/material_banner_widget.dart';
import 'package:firstapp/views/widget_practice.dart/preferred_size_widget.dart';
import 'package:firstapp/views/widget_practice.dart/reorderable_listview_widget.dart';
import 'package:firstapp/views/widget_practice.dart/show_modal_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';

import 'views/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/modal',
      routes: {
        '/first': (context) => const First(),
        '/second': (context) => const Second(),
        '/third': (context) => const Third(),
        '/material': (context) => const MaterialBannerWidgetExample(),
        '/preferred': (context) => const PreferredSizeWidgetExample(),
        '/modal': (context) => const ShowModalBottomSheetExample(),
        '/reorderlist': (context) => const ReorderableListViewWidgetExample(),
        '/checkbox': (context) => const CheckboxListTileWidgetExample(),
        '/p1': (context) => const P1(),
        '/imagepicker': (context) => const ImagePickerExample(),
      },
    );
  }
}
