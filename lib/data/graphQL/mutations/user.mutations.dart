import 'package:graphql_mobile/data/graphQL/graphql.executable.interface.dart';

class UserMutations {
  GraphqlExecutableInterface get createOneUser => _CreateOneUser();

  GraphqlExecutableInterface get updateOneUser => _UpdateOneUser();

  GraphqlExecutableInterface get deleteOneUser => _DeleteOneUser();

  GraphqlExecutableInterface get upsertOneUser => _UpsertOneUser();

  GraphqlExecutableInterface get deleteManyUser => _DeleteManyUser();

  GraphqlExecutableInterface get updateManyUser => _DpdateManyUser();
}

class _CreateOneUser implements GraphqlExecutableInterface {
  @override
  String get executable => "createOneUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _UpdateOneUser implements GraphqlExecutableInterface {
  @override
  String get executable => "updateOneUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _DeleteOneUser implements GraphqlExecutableInterface {
  @override
  String get executable => "deleteOneUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _UpsertOneUser implements GraphqlExecutableInterface {
  @override
  String get executable => "upsertOneUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _DeleteManyUser implements GraphqlExecutableInterface {
  @override
  String get executable => "deleteManyUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}

class _DpdateManyUser implements GraphqlExecutableInterface {
  @override
  String get executable => "updateManyUser";

  @override
  String get nameExecutable => '''''';

  @override
  Map<String, dynamic> params = {};
}
