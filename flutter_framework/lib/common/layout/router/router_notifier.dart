import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier.g.dart';

@Riverpod(dependencies: [])
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  Future<void> build() async {
    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
