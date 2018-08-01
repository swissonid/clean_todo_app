import 'package:domain/domain.dart';
import 'package:meta/meta.dart';

@immutable
abstract class Todo {
  String get Id;
  String get title;
  String get description;
  Status get status;
}
