import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class MaterialBannerWidgetExample extends StatefulWidget {
  const MaterialBannerWidgetExample({super.key});

  @override
  State<MaterialBannerWidgetExample> createState() =>
      _MaterialBannerWidgetExampleState();
}

class _MaterialBannerWidgetExampleState
    extends State<MaterialBannerWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Material banner widget"),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.amberAccent,
                content: const Text("Hey there!!!"),
                actions: [
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text("dismiss"))
                ]));
          },
          child: const Text("Open"),
        )),
      ),
    );
  }
}
