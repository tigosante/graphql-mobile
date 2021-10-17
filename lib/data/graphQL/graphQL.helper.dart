mixin GraphQLHelper {
  static String parserParams(String executable, Map<String, dynamic> params) {
    params.forEach((key, value) => executable.replaceAll(":$key:", value));
    return executable;
  }
}
