import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/helpers.dart';

final pokemonProvider = FutureProvider<String>((ref) async {
  final name = await PokemonService.getPokemonName(1);
  return name;
});
