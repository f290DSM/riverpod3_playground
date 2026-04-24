import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/presentation/widgets/fortune_cookie_widget.dart';

import '../../fortune_cookie/presentation/providers/simple_fortune_cookie_provider.dart';

class OtherScreen extends ConsumerWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cookie = ref.watch(cookieProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Other Page')),
      body: FortuneCookieWidget(fortuneCookie: cookie),
    );
  }
}
