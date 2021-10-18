import 'package:graphql_mobile/core/dependency_injection/di.helper.dart';
import 'package:graphql_mobile/data/client/graphql.client.dart';
import 'package:graphql_mobile/data/graphql/querys/user.querys.dart';
import 'package:graphql_mobile/domain/entities/user.entity.dart';

mixin UserRepositoryInterface {
  Future<UserEntity> getUser(int id);
}

class UserRepository implements UserRepositoryInterface {
  final _querys = UserQuerys();
  final _client = DIHelper.get<GraphqlClient>();

  @override
  Future<UserEntity> getUser(int id) async {
    final data = await _client.query(_querys.findUniqueUser..params = {"id": id});
    if ((data as Map<String, dynamic>).isEmpty) throw Exception("${_querys.findUniqueUser.nameExecutable}: vazío");
    return UserEntity.fromJson(data);
  }
}
