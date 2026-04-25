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

@riverpod
Future<String> futureString() async {
  await Future.delayed(Duration(seconds: 3));
  return "Hello from Future";
}

@riverpod
class FortuneCookieStream extends _$FortuneCookieStream {
  @override
  Stream<List<String>> build() async* {
    final cookies = <String>[];
    
    cookies.add("Your fortune is as empty as an eggshell");
    yield [...cookies];
    await Future.delayed(const Duration(seconds: 2));
    
    cookies.add("A journey of a thousand miles begins with a single step");
    yield [...cookies];
    await Future.delayed(const Duration(seconds: 2));
    
    cookies.add("A watched pot never boils");
    yield [...cookies];
    await Future.delayed(const Duration(seconds: 2));
    
    cookies.add("The early bird catches the worm");
    yield [...cookies];
    await Future.delayed(const Duration(seconds: 2));
    
    cookies.add("To be or not to be, that is the question");
    yield [...cookies];
  }
}

