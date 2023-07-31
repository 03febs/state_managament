import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state_managament/ui_screen/tiga/tiga.dart';

class Dua extends StatefulWidget {
  const Dua({super.key});

  @override
  State<Dua> createState() => _DuaState();
}

class _DuaState extends State<Dua> {
  var x = Random().nextInt(100);
  var y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(Random().nextInt(100).toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 2,
            ),
            Text(
              y.toString(),
              textScaleFactor: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      y = y + 1;
                      print(x);
                    });
                  },
                  child: const Text(
                    "Tambah",
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      y = y - 1;
                      print(x);
                    });
                  },
                  child: const Text(
                    "Kurang",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Tiga();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Add",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
