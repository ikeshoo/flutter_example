import 'package:flutter/material.dart';
import 'package:flutter_example/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
