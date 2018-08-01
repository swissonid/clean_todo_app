import 'package:meta/meta.dart';

@immutable
abstract class TodoEntity {
  String get Id;
  String get title;
  String get description;
  String get status;
}
