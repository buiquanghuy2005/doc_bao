import 'package:flutter/material.dart';
import '../models/article.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Article> articles = [
    Article(
      id: 1,
      title: 'Công nghệ AI đang thay đổi thế giới',
      description: 'Trí tuệ nhân tạo đang ảnh hưởng đến mọi lĩnh vực...',
      content: 'Chi tiết bài viết về AI...',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Article(
      id: 2,
      title: 'Bóng đá Việt Nam bứt phá ấn tượng',
      description: 'Thành tích nổi bật của đội tuyển Việt Nam...',
      content: 'Chi tiết bài viết về bóng đá...',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Danh sách bài báo')),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return ListTile(
            leading: Image.network(
              article.imageUrl,
              width: 70,
              fit: BoxFit.cover,
            ),
            title: Text(article.title),
            subtitle: Text(article.description),
          );
        },
      ),
    );
  }
}
