import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final randomNames = ref.watch(randomNameStreamProvider);
    final titleMedium = Theme.of(context).textTheme.titleMedium;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream-provider'),
        centerTitle: true,
      ),
      body: randomNames.when(
          data: (data) => Center(
                child: Text(
                  data,
                  style: titleMedium,
                ),
              ),
          error: (error, stackTrace) => Text('error $error'),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
