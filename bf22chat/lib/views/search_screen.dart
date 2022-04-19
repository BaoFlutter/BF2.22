
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/widgets/search/header_search.dart';
import '../resources/widgets/search/search_result_item.dart';
import '../view_models/firbase_auth_provider.dart';
import '../view_models/search_provider.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthProvider>().appUser;
    return ChangeNotifierProvider<SearchProvider>(
        create: (_) => SearchProvider(user!.uid!),
        builder: (context, child) {
          final controller = context.watch<SearchProvider>();
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  HeaderSearch(),
                  Expanded(
                    child: controller.listSearchUser.length > 0
                        ? ListView.builder(
                      itemCount: controller.listSearchUser.length,
                      itemBuilder: (context, index) =>
                          SearchResultUserItem(
                              appUser: controller.listSearchUser[index]),
                    )
                        : ListView.builder(
                      itemCount: controller.listAllUser.length,
                      itemBuilder: (context, index) =>
                          SearchResultUserItem(
                              appUser: controller.listAllUser[index]),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}