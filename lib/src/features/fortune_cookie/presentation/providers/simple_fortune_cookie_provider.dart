import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/domain/fortune_cookie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'simple_fortune_cookie_provider.g.dart';

@riverpod
FortuneCookie cookie(Ref ref) {
  return FortuneCookie(
    fortune: 'Não há caminho para a paz, a paz é o caminho.',
    id: '1',
    author: 'Mahatma Gandhi',
  );
}