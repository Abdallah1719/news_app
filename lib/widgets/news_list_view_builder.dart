import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileListViwe(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child:
                    Center(child: Text('opps there was an error , try agin')));
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });

    // isloading
    // ?
    // : articles.isNotEmpty
    //   ? NewsTileListViwe(articles: articles)
    //  : SliverToBoxAdapter(
    //    child:
    //       Center(child: Text('opps there was an error , tryagin')));
  }
}
