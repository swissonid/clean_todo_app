import 'package:meta/meta.dart';

@immutable
abstract class ToDo {
  String get id;
  String get title;
  String get description;
  String get status;
}
