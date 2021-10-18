import 'package:get_it/get_it.dart';

abstract class InjectionInterface {
  InjectionInterface(GetIt di);
  Future<void> inject();
}
