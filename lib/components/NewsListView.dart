
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/ArticalModel.dart';

import 'package:news_app_ui_setup/components/NewsTile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,required this.articles
  });

 final List<Articalmodel> articles;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
            (context, index) => Newstile(
              articalmodel: articles[index],
            ),
            childCount: articles.length,
          ));
  }
}
