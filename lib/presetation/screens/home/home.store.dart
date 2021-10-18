import 'package:flutter_triple/flutter_triple.dart';
import 'package:graphql_mobile/core/dependency_injection/di.helper.dart';
import 'package:graphql_mobile/domain/entities/user.entity.dart';
import 'package:graphql_mobile/domain/services/user.service.dart';

class LoadingUserStore extends StreamStore<Exception, UserEntity> {
  LoadingUserStore() : super(UserEntity.empty());

  final _userService = DIHelper.get<UserService>();

  void getUser(int id) => execute(() async => await _userService.getUser(id));
}
