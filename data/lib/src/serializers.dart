import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:data/src/dao/todo_dao.dart';

part 'serializers.g.dart';

@SerializersFor(const [TodoDao])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
