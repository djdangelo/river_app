import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/helpers.dart';

final randomNameProvider = StateProvider.autoDispose<String>((ref) {
  return RandomNameGeneratorHelper.getRandomName();
});
