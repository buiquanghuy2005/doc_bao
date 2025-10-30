import 'package:flutter/material.dart';
import '../models/article.dart';
import 'detail_page.dart'; // 👉 nhớ import file chi tiết

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
    return Scaffold(
      appBar: AppBar(title: const Text('Yêu thích')),
      body: favourites.isEmpty
          ? const Center(child: Text('Chưa có bài viết yêu thích nào'))
          : ListView.builder(
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                final article = favourites[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      article.imageUrl,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                    title: Text(article.title),
                    subtitle: Text(
                      article.content.length > 60
                          ? article.content.substring(0, 60) + '...'
                          : article.content,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            article: article,
                            onAddToFavourite: onToggleFavourite,
                            isFavourite: true,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
