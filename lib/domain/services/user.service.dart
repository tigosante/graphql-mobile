import 'package:graphql_mobile/data/repositories/user.repository.dart';
import 'package:graphql_mobile/domain/entities/user.entity.dart';

class UserService {
  UserService({
    required UserRepositoryInterface repository,
  }) : _repository = repository;

  final UserRepositoryInterface _repository;

  Future<UserEntity> getUser(int id) async => await _repository.getUser(id);
}
