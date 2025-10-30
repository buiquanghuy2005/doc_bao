import 'package:flutter/material.dart';
import 'models/article.dart';
import 'pages/home_page.dart';
import 'pages/favourite_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<Article> favourites = [];
  int currentIndex = 0;

  void toggleFavourite(Article article) {
    setState(() {
      if (favourites.contains(article)) {
        favourites.remove(article);
      } else {
        favourites.add(article);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(onToggleFavourite: toggleFavourite, favourites: favourites),
      FavouritePage(favourites: favourites, onToggleFavourite: toggleFavourite),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple News App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Danh sách'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Yêu thích',
            ),
          ],
        ),
      ),
    );
  }
}
