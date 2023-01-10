import 'package:firstapp/views/second.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  //
  //
  //
  Widget intrinsicHeightExample() => IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 2,
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/ellis-bridge-ahmedabad-century-old-situated-gujarat-india-bridges-western-eastern-parts-city-across-124476810.jpg",
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                flex: 3,
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ")),
          ],
        ),
      );
  //
  //
  //
  Widget fittedBoxExample() => Center(
        child: Container(
          color: Colors.blueGrey,
          width: 300,
          height: 200,
          child: const FittedBox(
            child: Text(
              "Fitted Box",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      );
  //
  //
  //
  Widget orientationExample() =>
      OrientationBuilder(builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        return isPortrait
            ? Center(
                child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: const FittedBox(child: Text("Portrait"))))
            : Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: const FittedBox(child: Text("Landscape")),
                ),
              );
      });
  //
  //
  //

  Widget gridExample() => OrientationBuilder(builder: ((context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        return GridView.count(
          crossAxisCount: isPortrait ? 2 : 3,
          children: List.generate(
              20,
              (index) => FittedBox(
                  child:
                      Card(color: Colors.grey, child: Image.asset('p1.jpeg')))),
        );
      }));
  //
  //
  //

  //
  //
  //
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    bool _isAppear = true;

    void _toggle() {
      setState() {
        _isAppear = !_isAppear;
      }
    }

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(centerTitle: false, title: const Text("Example")),
          drawer: !isPortrait
              ? Drawer(
                  child: Container(
                    color: Colors.lightBlue,
                    width: 300,
                    child: const Text("Sidebar"),
                  ),
                )
              : null,
          body: Container(
            child: Column(children: [
              GestureDetector(
                child: Image.asset(
                  // 'p1.jpeg',
                  "assets/images/p1.jpeg",
                  height: 100,
                  width: 100,
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));
                },
              ),
              GestureDetector(
                child: const Text(
                  "Tap Here",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    _toggle();
                  });

                  print("Clicked");
                },
              ),
              Visibility(
                visible: _isAppear,
                child: const Text(
                  "data",
                ),
              ),
            ]),
          )),
    );
  }
}
