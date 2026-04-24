import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Providers Playground')),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Fortune Cookie',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              'Simple Provider',
            ),
            onTap: () {
              Navigator.pushNamed(context, '/fortune_cookie');
            },
          ),
          ListTile(
            title: Text(
              'Fortune Cookies',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text('Notifier/AsyncNotifier Provider'),
            onTap: () {
              Navigator.pushNamed(context, '/fortune_cookie_list');
            },
          ),
          ListTile(
            title: Text(
              'Other Screen',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text('Sharing Provider'),
            onTap: () {
              Navigator.pushNamed(context, '/other');
            },
          ),
        ],
      ),
    );
  }
}
