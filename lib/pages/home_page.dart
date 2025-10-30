import 'package:flutter/material.dart';
import '../data/articles_data.dart';
import '../models/article.dart';
import 'detail_page.dart';
import 'about_page.dart';

class HomePage extends StatefulWidget {
  final Function(Article) onAddToFavourite;
  final List<Article> favourites;

  const HomePage({
    super.key,
    required this.onAddToFavourite,
    required this.favourites,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Article> filteredArticles = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    filteredArticles = articles;
  }

  void _filterArticles(String query) {
    setState(() {
      searchQuery = query.toLowerCase();
      filteredArticles = articles.where((article) {
        final title = article.title.toLowerCase();
        final description = article.description.toLowerCase();
        return title.contains(searchQuery) || description.contains(searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách bài báo'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'about') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'about',
                child: Text('Giới thiệu'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm bài viết...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            searchQuery = '';
                            filteredArticles = articles;
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: _filterArticles,
            ),
          ),

          Expanded(
            child: filteredArticles.isEmpty
                ? const Center(
                    child: Text(
                      'Không tìm thấy bài viết nào 😢',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredArticles.length,
                    itemBuilder: (context, index) {
                      final article = filteredArticles[index];
                      final isFavourite = widget.favourites.contains(article);

                      return Card(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: Image.asset(
                            article.imageUrl,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          title: Text(article.title),
                          subtitle: Text(article.description),
                          trailing: Icon(
                            isFavourite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavourite ? Colors.red : null,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  article: article,
                                  onAddToFavourite: widget.onAddToFavourite,
                                  isFavourite: isFavourite,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
