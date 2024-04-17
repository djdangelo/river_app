import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleMedium = Theme.of(context).textTheme.titleMedium;
    final pokemonAsync = ref.watch(pokemonProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Screen'),
        centerTitle: true,
      ),
      body: Center(
          child: pokemonAsync.when(
        data: (data) => Text(
          data,
          style: titleMedium,
        ),
        error: (error, stackTrace) => Text('Error $error'),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }
}
