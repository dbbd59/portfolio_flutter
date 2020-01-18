import 'package:meta/meta.dart';

@immutable
abstract class ChucknorrisEvent {}

class FetchChuckNorrisFact extends ChucknorrisEvent {}
