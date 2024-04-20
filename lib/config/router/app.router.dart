import 'package:go_router/go_router.dart';
import 'package:river_app/presentation/presentation.dart';
import 'package:river_app/presentation/screens/state_notifier_provider/todos.screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/state-provider',
    builder: (context, state) => const StateProviderScreen(),
  ),
  GoRoute(
    path: '/pokemon-screen',
    builder: (context, state) => const PokemonScreen(),
  ),
  GoRoute(
    path: '/stream-screen',
    builder: (context, state) => const StreamScreen(),
  ),
  GoRoute(
    path: '/todos-screen',
    builder: (context, state) => const TodosScreen(),
  )
]);
