import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
  const PlanProvider({
    super.key,
    required Widget child,
    required ValueNotifier<Plan> notifier,
  }) : super(child: child, notifier: notifier);

  static ValueNotifier<Plan> of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    assert(provider != null, 'PlanProvider is not found in widget tree');
    return provider!.notifier!;
  }
}
