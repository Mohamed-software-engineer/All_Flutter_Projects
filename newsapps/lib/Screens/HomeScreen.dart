import 'package:flutter/material.dart';
import 'package:newsapps/Widgets/CategoryListView.dart';
import 'package:newsapps/Widgets/NewsListView.dart';

class HomeScreen extends StatelessWidget {
  final String category;
  const HomeScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.cyan,
        title: Row(
          children: [
            Text("News", style: TextStyle(color: Colors.black),),
            Text("Cloud", style: TextStyle(color: Colors.orange),)
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryView(),),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),
          NewsList(category: category,),
        ],
      ),
    );
  }
}
