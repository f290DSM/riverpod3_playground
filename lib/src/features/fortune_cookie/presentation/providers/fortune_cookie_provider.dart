import 'package:riverpod3_playground/src/features/fortune_cookie/domain/fortune_cookie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fortune_cookie_provider.g.dart';

@Riverpod(keepAlive: true)
class FortuneCookieController extends _$FortuneCookieController {
  @override
  FutureOr<List<FortuneCookie>> build() async {
    return Future.value([]);
  }

  Future<void> add(FortuneCookie cookie) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    state = await AsyncValue.guard(() async {
      return [...?state.value, cookie];
    });
  }

  Future<void> remove(FortuneCookie cookie) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 1));
    state = await AsyncValue.guard(() async {
      return state.value!..remove(cookie);
    });
  }
}
