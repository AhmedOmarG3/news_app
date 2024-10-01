import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/ArticalModel.dart';
import 'package:news_app_ui_setup/Services/newsService.dart';
import 'package:news_app_ui_setup/components/Erorr_Messege.dart';
import 'package:news_app_ui_setup/components/Indicator.dart';
import 'package:news_app_ui_setup/components/NewsListView.dart';

class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key, required this.category});
 final String category;
  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  var future;
 
  @override
  void initState() {
    future = NewsService(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articalmodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const Erorr_Messege(
              messege: 'oops there was an error ! Try Later ',
            );
          } else {
            return const Indecator();
          }
        });
  }
}
