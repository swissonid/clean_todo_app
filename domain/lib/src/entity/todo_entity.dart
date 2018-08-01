import 'package:domain/domain.dart';

abstract class Todo {
  String get Id;
  String get title;
  String get description;
  Status get status;
}
