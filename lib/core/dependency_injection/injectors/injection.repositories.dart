import 'package:get_it/get_it.dart';
import 'package:graphql_mobile/core/dependency_injection/injectors/injection.interface.dart';
import 'package:graphql_mobile/data/repositories/user.repository.dart';

class InjectionRepositoiry implements InjectionInterface {
  InjectionRepositoiry(GetIt di) : _di = di;

  final GetIt _di;

  @override
  Future<void> inject() async {
    _di.registerLazySingleton<UserRepositoryInterface>(() => UserRepository());
  }
}
