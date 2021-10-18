import 'package:graphql_mobile/data/graphQL/graphql.executable.interface.dart';

class UserQuerys {
  GraphqlExecutableInterface get findUniqueUser => _FindUniqueUser();

  GraphqlExecutableInterface get findFirstUser => _FindFirstUser();

  GraphqlExecutableInterface get findManyUser => _FindManyUser();

  GraphqlExecutableInterface get findManyUserCount => _FindManyUserCount();

  GraphqlExecutableInterface get aggregateUser => _AggregateUser();
}

class _FindUniqueUser implements GraphqlExecutableInterface {
  @override
  String get executable => "findUniqueUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _FindFirstUser implements GraphqlExecutableInterface {
  @override
  String get executable => "findFirstUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _FindManyUser implements GraphqlExecutableInterface {
  @override
  String get executable => "findManyUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _FindManyUserCount implements GraphqlExecutableInterface {
  @override
  String get executable => "findManyUserCount";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _AggregateUser implements GraphqlExecutableInterface {
  @override
  String get executable => "aggregateUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}
