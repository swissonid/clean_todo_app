import 'package:data/data.dart';
import 'package:data/src/dao/todo_dao.dart';

main() {
  final todo = TodoDao((b) => b..status);
  var awesome = new Awesome();
  print('awesome: ${awesome.isAwesome}');
}
