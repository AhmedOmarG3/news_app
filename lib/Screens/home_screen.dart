import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/components/NewsListViewBuilder.dart';

import 'package:news_app_ui_setup/components/categoryListView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CategoryListView(),
                ),
                const Newslistviewbuilder(
                  category: 'general',
                ),
              ],
            )));
  }
}
