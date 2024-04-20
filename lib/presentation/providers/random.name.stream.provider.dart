import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/helpers.dart';

final randomNameStreamProvider =
    StreamProvider.autoDispose<String>((ref) async* {
  await for (final name in RandomNameGeneratorHelper.randomNamesStream()) {
    yield name;
  }
});



// final randomNameStreamProvider = StreamProvider<List<String>>((ref) async* {
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Dangelo'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Dangelo', 'Javier'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['d1', 'd2', 'd3'];
// });