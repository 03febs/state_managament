import 'package:flutter/material.dart';
import 'package:state_managament/ui_screen/dua/dua.dart';
import 'package:state_managament/ui_screen/home/home.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';

class Satu extends StatelessWidget {
  const Satu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Satu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Dua();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Add",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
