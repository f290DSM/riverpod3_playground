import 'package:flutter/material.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/domain/fortune_cookie.dart';

class FortuneCookieWidget extends StatelessWidget {
  const FortuneCookieWidget({super.key, required this.fortuneCookie});

  final FortuneCookie fortuneCookie ;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          leading: const Icon(Icons.cookie),
          title: Text(fortuneCookie.fortune),
          subtitle: Text('Author: ${fortuneCookie.author}'),
        ),
      ),
    );
  }
}