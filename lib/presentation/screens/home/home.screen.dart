import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('River App'),
        centerTitle: true,
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
            title: 'State Provider',
            subTitle: 'Simple State',
            location: '/state-provider'),
        _CustomListTile(
            title: 'Pokemon Future',
            subTitle: 'Simple Future',
            location: '/pokemon-screen'),
        _CustomListTile(
            title: 'Stream Provider',
            subTitle: 'Simple Future',
            location: '/stream-screen'),
        _CustomListTile(
            title: 'Todos Notifier Provider',
            subTitle: 'Simple Future',
            location: '/todos-screen'),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    final titleMedium = Theme.of(context).textTheme.titleMedium;
    return ListTile(
      title: Text(
        title,
        style: titleMedium,
      ),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
