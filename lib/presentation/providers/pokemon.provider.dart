import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/helpers.dart';

// final pokemonProvider = FutureProvider.family<String, int>((ref, id) async {
//   final name = await PokemonService.getPokemonName(id);
//   return name;
// });

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

final pokemonProvider = FutureProvider<String>((ref) async {
  final id = ref.watch(pokemonIdProvider);
  final name = await PokemonService.getPokemonName(id);
  return name;
});
