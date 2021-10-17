import 'package:graphql_mobile/data/repositories/user.repository.dart';

class UserService {
  UserService({
    required UserRepositoryInterface repository,
  }) : _repository = repository;

  final UserRepositoryInterface _repository;
}
