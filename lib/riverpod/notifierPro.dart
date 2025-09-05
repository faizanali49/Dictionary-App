import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Step 2: Create the provider
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0); // initial state = 0

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider); // watches the int state

    return Scaffold(
      appBar: AppBar(title: const Text("Counter using StateNotifier")),
      body: Center(
        child: Text('Count: $count', style: const TextStyle(fontSize: 40)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'inc',
            onPressed: () {
              ref.read(counterProvider.notifier).increment(); // calls function
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'dec',
            onPressed: () {
              ref.read(counterProvider.notifier).decrement(); // calls function
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              ref.read(counterProvider.notifier).reset(); // calls function
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
