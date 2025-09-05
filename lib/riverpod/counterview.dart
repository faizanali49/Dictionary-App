import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

// Step 2: Create the provider
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
   CounterNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }

  void reset() {
    state = 0;
  }
}
