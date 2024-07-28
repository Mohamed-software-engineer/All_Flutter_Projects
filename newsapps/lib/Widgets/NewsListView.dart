import 'package:flutter/material.dart';
import 'package:newsapps/Service/newsService.dart';
import '../Models/articlesModels.dart';
import 'NewsTile.dart';

class NewsList extends StatefulWidget {
  final String category;
  const NewsList({super.key, required this.category});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<ArticlesModels> data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    List<ArticlesModels> newData = await NewsService().getNews(widget.category);
    setState(() {
      data = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return NewsTile(
        articleOpject: data[index],
      );
    }, childCount: data.length));
  }
}