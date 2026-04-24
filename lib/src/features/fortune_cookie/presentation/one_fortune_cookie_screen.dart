import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/domain/fortune_cookie.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/presentation/widgets/fortune_cookie_widget.dart';

import 'providers/simple_fortune_cookie_provider.dart';

class FortuneCookieScreen extends ConsumerWidget {
  const FortuneCookieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cookie = ref.watch(cookieProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Fortune Cookie')),
      body: FortuneCookieWidget(fortuneCookie: cookie),
    );
  }
}
