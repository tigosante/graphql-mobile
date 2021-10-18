mixin GraphQLHelper {
  static String parserParams({
    required String executable,
    required Map<String, dynamic> params,
  }) {
    if (params.isEmpty) return executable;
    params.forEach((key, value) => executable.replaceAll(":$key:", value));
    return executable;
  }
}
