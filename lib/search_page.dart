import 'package:bunny_search_animated_searchbar/sliver_search_app_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: SliverSearchAppBar(),
            pinned: true,
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Cruelty-free brand',
                  style: TextStyle(fontSize: 20),
                ));
          }, childCount: 20))
        ],
      ),
    );
  }
}
