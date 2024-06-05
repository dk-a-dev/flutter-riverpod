import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'activity.dart';
import 'provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Activity> activity = ref.watch(activityProvider);
    return activity.when(
      data: (activity) => Column(
        children: [
          Text(activity.activity),
          Text(activity.type),
          Text(activity.participants.toString()),
          Text(activity.price.toString()),
          Text(activity.accessibility),
          Text(activity.duration),
          Text(activity.kidFriendly.toString()),
          Text(activity.link ?? ''),
        ],
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}
