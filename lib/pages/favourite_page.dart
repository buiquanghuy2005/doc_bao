import 'package:flutter/material.dart';
import '../models/article.dart';
import 'article_detail_page.dart';

class FavouritePage extends StatelessWidget {
  final List<Article> favourites;
  final Function(Article) onToggleFavourite;

  const FavouritePage({
    super.key,
    required this.favourites,
    required this.onToggleFavourite,
  });

  @override
  Widget build(BuildContext context) {
    if (favourites.isEmpty) {
      return const Center(child: Text('Chưa có bài yêu thích nào.'));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Bài viết yêu thích')),
      body: ListView.builder(
        itemCount: favourites.length,
        itemBuilder: (context, index) {
          final article = favourites[index];
          return ListTile(
            leading: Image.network(
              article.imageUrl,
              width: 70,
              fit: BoxFit.cover,
            ),
            title: Text(article.title),
            subtitle: Text(article.description),
            trailing: const Icon(Icons.favorite, color: Colors.red),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailPage(
                    article: article,
                    isFavourite: true,
                    onToggleFavourite: onToggleFavourite,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
