import 'package:graphql_mobile/data/graphQL/graphql.executable.interface.dart';
import 'package:hasura_connect/hasura_connect.dart';

class GraphqlClient {
  GraphqlClient(HasuraConnect client) : _client = client;
  final HasuraConnect _client;

  Future<dynamic> query(GraphqlExecutableInterface graphqlExecutable) async {
    final data = await _client.executeQuery(
      Query(
        document: graphqlExecutable.executable,
        variables: graphqlExecutable.params,
        key: graphqlExecutable.nameExecutable,
      ),
    );

    return data["data"][graphqlExecutable.nameExecutable];
  }

  Future<dynamic> mutation(GraphqlExecutableInterface graphqlExecutable) async {
    final data = await _client.executeMutation(
      Query(
        document: graphqlExecutable.executable,
        variables: graphqlExecutable.params,
        key: graphqlExecutable.nameExecutable,
      ),
    );

    return data["data"][graphqlExecutable.nameExecutable];
  }
}
