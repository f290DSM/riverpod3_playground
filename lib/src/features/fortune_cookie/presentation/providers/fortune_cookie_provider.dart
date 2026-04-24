import 'package:riverpod3_playground/src/features/fortune_cookie/domain/fortune_cookie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fortune_cookie_provider.g.dart';

@riverpod
class FortuneCookieController extends _$FortuneCookieController {
  @override
  List<FortuneCookie> build() {
    return [];
  }

  void add(FortuneCookie cookie) {
    state = [...state, cookie];
  }
}
