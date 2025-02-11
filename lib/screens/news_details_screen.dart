import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsDetailPage extends StatelessWidget {
  final ArticalModel article;
  const NewsDetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ' News',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Cloud',
            style: TextStyle(color: Colors.orange),
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article.image != null) Image.network(article.image!),
              const SizedBox(height: 16),
              Text(
                article.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                article.subtitle ?? 'No Description',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
