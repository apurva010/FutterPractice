import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class P1 extends StatefulWidget {
  const P1({super.key});

  @override
  State<P1> createState() => _P1State();
}

class _P1State extends State<P1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('code'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/p1.jpeg'),
                    radius: 90,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UserStats {
  final int id;
  final String name;
  final double leftpadding;

  UserStats(this.id, this.name, this.leftpadding);
}

final userStat = [
  UserStats(10, 'ABC', 41),
  UserStats(11, 'PQR', 41),
  UserStats(12, 'XYZ', 24),
];
