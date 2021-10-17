import 'package:graphql_mobile/data/graphQL/graphQL.helper.dart';
import 'package:graphql_mobile/data/graphql/querys/user.querys.dart';
import 'package:graphql_mobile/domain/entities/user.entity.dart';

mixin UserRepositoryInterface {
  Future<UserEntity> getUser();
}

class UserRepository implements UserRepositoryInterface {
  final _querys = UserQuerys();

  @override
  Future<UserEntity> getUser() async {
    final query = GraphQLHelper.parserParams(_querys.getUser, {});
    return UserEntity();
  }
}
