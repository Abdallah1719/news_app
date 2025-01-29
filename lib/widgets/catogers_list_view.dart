import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/catogreycard.dart';

class CatogersListView extends StatelessWidget {
  const CatogersListView({
    super.key,
  });
  final List<CategoryModel> categores = const [
    CategoryModel(image: 'assets/business.jpg', categoryname: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryname: 'Entertainment'),
    CategoryModel(image: 'assets/general.png', categoryname: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryname: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryname: 'Science'),
    CategoryModel(image: 'assets/sports.jpg', categoryname: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryname: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categores.length,
          itemBuilder: (context, index) {
            return CatogreyCard(
              category: categores[index],
            );
          }),
    );
  }
}
