import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileListViwe extends StatelessWidget {
  const NewsTileListViwe({super.key, required this.articles});
  final List<ArticalModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articalModel: articles[index],
          ),
        );
      }),
    );
  }
}
