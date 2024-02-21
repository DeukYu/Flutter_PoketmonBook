import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:flutter_framework/common/layout/router/routers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('HomeScreen'),
          Center(
            child: ElevatedButton(
                onPressed: () => const LoginRoute().go(context),
                child: const Text("LOGIN")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  print(ChartRoute().location);

                  const ChartRoute().push(context);
                },
                child: const Text("CHART")),
          ),
        ],
      ),
    );
  }
}
