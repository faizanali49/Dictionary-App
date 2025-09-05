import 'package:dictionaryapp/riverpod/notifierPro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final screenonecounter = StateProvider<int>((ref) {
  return 0;
});
final screentwocounter = StateProvider<int>((ref) {
  return 0;
});
final screenthreecounter = StateProvider<int>((ref) {
  return 0;
});
final screenselected = StateProvider<int>((ref) {
  return 1;
});

class Bottomnav extends ConsumerWidget {
  const Bottomnav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selected = ref.watch(screenselected);
    int counter1 = ref.watch(screenonecounter);
    int counter2 = ref.watch(screentwocounter);
    int counter3 = ref.watch(screenthreecounter);
    return Scaffold(
      appBar: AppBar(title: const Text('Bottomnav')),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: double.infinity,
        child: Column(
          spacing: 120,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selected == 1
                  ? counter1.toString()
                  : selected == 2
                  ? counter2.toString()
                  : counter3.toString(),
              style: TextStyle(fontSize: 44),
            ),
            ElevatedButton(
              onPressed: () {
                if (selected == 1) {
                  ref.read(screenonecounter.notifier).state++;
                } else if (selected == 2) {
                  ref.read(screentwocounter.notifier).state++;
                } else if (selected == 3) {
                  ref.read(screenthreecounter.notifier).state++;
                }
              },
              child: const Text('increment'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 12,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(screenselected.notifier).state = 1;
                  },
                  child: const Text('Screen 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(screenselected.notifier).state = 2;
                  },
                  child: const Text('Screen 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(screenselected.notifier).state = 3;
                  },
                  child: const Text('Screen 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
