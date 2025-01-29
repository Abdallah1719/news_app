import 'package:flutter/material.dart';
import 'package:news_app/widgets/catogers_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CatogersListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(category: 'technology'),
          ],
        ),
      ),
    );
  }
}
