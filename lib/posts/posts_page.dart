import 'package:bottom_navigation_test/data/app_data.dart';
import 'package:bottom_navigation_test/widgets.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < posts.length; i++)
              PostTile(
                tileColor: posts[i].color,
                postTitle: posts[i].title,
                onTileTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}