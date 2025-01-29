import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_news.dart';

class CatogreyCard extends StatelessWidget {
  const CatogreyCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.categoryname,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 85,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              category.categoryname,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
