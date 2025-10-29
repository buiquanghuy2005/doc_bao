import 'package:flutter/material.dart';
import '../models/article.dart';
import 'article_detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Article> articles = [
    Article(
      id: 1,
      title: 'Công nghệ AI đang thay đổi thế giới',
      description: 'Trí tuệ nhân tạo đang ảnh hưởng đến mọi lĩnh vực...',
      content:
          'Chi tiết bài viết về AI... Đây là nội dung dài hơn cho bài viết.',
      imageUrl:
          'https://up.yimg.com/ib/th/id/OIP.s2SHIZUjABr-gwswyqZhkAHaE7?pid=Api&rs=1&c=1&qlt=95&w=175&h=116',
    ),
    Article(
      id: 2,
      title: 'Bóng đá Việt Nam bứt phá ấn tượng',
      description: 'Thành tích nổi bật của đội tuyển Việt Nam...',
      content: 'Chi tiết bài viết về bóng đá... Đây là phần nội dung dài hơn.',
      imageUrl:
          'https://sp.yimg.com/ib/th/id/OIP.etadR6qMhuU2IBg1aPyZRAHaE8?pid=Api&w=148&h=148&c=7&dpr=2&rs=1',
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailPage(article: article),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
