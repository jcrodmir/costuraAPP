import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_word_provider.g.dart';

@riverpod
String helloWorl(Ref ref) {
  return "Hola Mundo";
}
