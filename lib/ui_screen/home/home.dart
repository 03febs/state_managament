import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state_managament/ui_screen/satu/satu.dart';
import 'package:states_rebuilder/scr/state_management/extensions/type_extensions.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 2,
            ),
            OnReactive(
              () => Text(
                counter.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counter.state = counter.state + 1;
                    print(counter.state);
                  },
                  child: const Text(
                    "Tambah",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    counter.state = counter.state - 1;
                    print(counter.state);
                  },
                  child: const Text(
                    "Kurang",
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Satu();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Satu",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final counter = 0.inj();
