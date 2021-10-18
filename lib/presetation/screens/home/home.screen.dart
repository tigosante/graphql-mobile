import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:graphql_mobile/domain/entities/user.entity.dart';
import 'package:graphql_mobile/presetation/screens/home/home.store.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  final _loadingUserStore = LoadingUserStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App bar"),
      ),
      body: ScopedBuilder(
        store: _loadingUserStore,
        onLoading: (_) => const CircularProgressIndicator(),
        onError: (_, error) => Text("Error: ${error.toString()}"),
        onState: (_, UserEntity state) => SingleChildScrollView(
          child: Text("user id: ${state.id}"),
        ),
      ),
    );
  }
}
