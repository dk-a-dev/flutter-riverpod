import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_started/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello World';
}

void main() {
  ProviderScope(child: MyApp());
}


