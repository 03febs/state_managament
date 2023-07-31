import 'dart:math';

import 'package:flutter/material.dart';

class Tiga extends StatefulWidget {
  const Tiga({super.key});

  @override
  State<Tiga> createState() => _TigaState();
}

class _TigaState extends State<Tiga> {
  // var x = Random().nextInt(100);
  // var y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.loop))
        ],
        // automaticallyImplyLeading: false,
        title: Text(Random().nextInt(100).toString()),
      ),
      body: const Center(
        child: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatefulWidget {
  const MyColumn({
    super.key,
  });

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  var y = 0;
  @override
  Widget build(BuildContext context) {
    const text = const Text('hallo');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Random().nextInt(100).toString(),
          textScaleFactor: 2,
        ),
        Text(
          y.toString(),
          // y.toString(),
          textScaleFactor: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  y = y + 1;
                  print(y);
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
                  print(y);
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
            Navigator.pop(context);
          },
          child: const Text(
            "Back",
          ),
        ),
        text
      ],
    );
  }
}
