import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FortuneCookieListScreen extends ConsumerWidget {
  const FortuneCookieListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fortune Cookies')),
      body: Center(
        child: Text('Uma coleção de frase de biscoitos da sorte aqui.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
