import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:flutter_framework/router/routers.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isAppBar: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('LOGIN SCREEN'),
          Center(
            child: ElevatedButton(
                onPressed: () => const HomeRoute().go(context),
                child: const Text("HOME")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () => const SplashRoute().go(context),
                child: const Text("SPLASH")),
          ),
        ],
      ),
    );
  }
}