import 'package:meta/meta.dart';
import 'package:todo_domain/domain.dart';

@immutable
abstract class TodoEntity {
  String get Id;
  String get title;
  String get description;
  Status get status;
}
