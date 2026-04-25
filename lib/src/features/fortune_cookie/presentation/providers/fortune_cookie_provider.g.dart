// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fortune_cookie_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fortuneCookieControllerHash() =>
    r'c7e41d00d8f123427fc495b0bbc958920ff136d1';

/// See also [FortuneCookieController].
@ProviderFor(FortuneCookieController)
final fortuneCookieControllerProvider =
    AsyncNotifierProvider<
      FortuneCookieController,
      List<FortuneCookie>
    >.internal(
      FortuneCookieController.new,
      name: r'fortuneCookieControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fortuneCookieControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FortuneCookieController = AsyncNotifier<List<FortuneCookie>>;
String _$fortuneCookieStreamHash() =>
    r'09e4f875eef6e9252be37c2c030063094e0f76b8';

/// See also [FortuneCookieStream].
@ProviderFor(FortuneCookieStream)
final fortuneCookieStreamProvider =
    AutoDisposeStreamNotifierProvider<
      FortuneCookieStream,
      List<String>
    >.internal(
      FortuneCookieStream.new,
      name: r'fortuneCookieStreamProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fortuneCookieStreamHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FortuneCookieStream = AutoDisposeStreamNotifier<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
