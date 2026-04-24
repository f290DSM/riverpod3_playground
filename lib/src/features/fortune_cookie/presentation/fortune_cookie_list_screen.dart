import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/domain/fortune_cookie.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/presentation/providers/fortune_cookie_provider.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/presentation/widgets/fortune_cookie_widget.dart';

class FortuneCookieListScreen extends ConsumerWidget {
  const FortuneCookieListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cookies = ref.watch(fortuneCookieControllerProvider);
    final controller = ref.read(fortuneCookieControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Fortune Cookies')),
      body: cookies.when(data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final cookie = data[index];
            return FortuneCookieWidget(
              fortuneCookie: cookie,
            );
          },
        );
      }, error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      }, loading: () => const Center(child: CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.add(FortuneCookie.random()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
