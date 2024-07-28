import 'package:flutter/material.dart';
import 'package:newsapps/Models/articlesModels.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleOpject});
  final ArticlesModels articleOpject;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: articleOpject.image != null
              ? Image.network(
                  articleOpject.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.asset("image/nullImage.jpg"),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          articleOpject.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          "${articleOpject.description != null ? articleOpject.description! : ""}",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
