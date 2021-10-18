import 'package:get_it/get_it.dart';
import 'package:graphql_mobile/core/dependency_injection/injectors/injection.interface.dart';
import 'package:graphql_mobile/data/client/graphql.client.dart';
import 'package:hasura_connect/hasura_connect.dart';

class InjectionClients implements InjectionInterface {
  InjectionClients(GetIt di) : _di = di;

  final GetIt _di;

  @override
  Future<void> inject() async {
    _di.registerLazySingleton<HasuraConnect>(() => HasuraConnect("")); //TODO: corrigir URL
    _di.registerLazySingleton<GraphqlClient>(() => GraphqlClient(_di()));
  }
}
