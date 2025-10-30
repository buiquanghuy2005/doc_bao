import 'package:flutter/material.dart';
import '../models/article.dart';
import 'article_detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Article> favourites;
  final Function(Article) onToggleFavourite;

  HomePage({
    super.key,
    required this.onToggleFavourite,
    required this.favourites,
  });

  final List<Article> articles = [
    Article(
      id: 1,
      title: 'Công nghệ AI đang thay đổi thế giới',
      description: 'Trí tuệ nhân tạo đang ảnh hưởng đến mọi lĩnh vực...',
      content:
          'AI đang trở thành một phần không thể thiếu trong cuộc sống hiện đại. Từ y tế, giáo dục, cho đến giao thông, trí tuệ nhân tạo giúp con người tối ưu hóa công việc và nâng cao hiệu quả sản xuất.',
      imageUrl:
          'https://tse2.mm.bing.net/th/id/OIP.IUYpy-hS8koeDvAYlaNRwQHaE7?pid=Api&P=0&h=220',
    ),
    Article(
      id: 2,
      title: 'Khám phá không gian: Hành trình tới sao Hỏa',
      description:
          'NASA đang chuẩn bị cho sứ mệnh đưa con người lên sao Hỏa...',
      content:
          'Các cơ quan vũ trụ trên thế giới đang tập trung vào việc nghiên cứu công nghệ để con người có thể sinh sống lâu dài trên sao Hỏa. Đây là bước ngoặt lớn trong lịch sử khám phá vũ trụ.',
      imageUrl:
          'https://tse3.mm.bing.net/th/id/OIP.KaB3JghwwtnznIBL8JVXUgHaEc?pid=Api&P=0&h=220',
    ),
    Article(
      id: 3,
      title: 'Kinh tế toàn cầu sau đại dịch',
      description:
          'Các quốc gia đang phục hồi kinh tế sau giai đoạn khó khăn...',
      content:
          'Sau đại dịch, nhiều nền kinh tế đã bắt đầu phục hồi nhưng không đồng đều. Các nước phát triển đang hướng tới chuyển đổi xanh và số hóa để đảm bảo phát triển bền vững.',
      imageUrl:
          'https://tse2.mm.bing.net/th/id/OIP.Jm4uoRsYqvWVUwVVU20ssQHaFU?pid=Api&P=0&h=220',
    ),
    Article(
      id: 4,
      title: 'Giáo dục số trong thời đại 4.0',
      description: 'Học trực tuyến đang trở thành xu hướng toàn cầu...',
      content:
          'Công nghệ đã làm thay đổi cách con người học tập. Với nền tảng học trực tuyến, sinh viên có thể tiếp cận tri thức từ bất kỳ nơi đâu, bất kỳ lúc nào.',
      imageUrl:
          'https://tse2.mm.bing.net/th/id/OIP.pLIzif-mlaFj7tipTn1FyQHaEo?pid=Api&P=0&h=220',
    ),
    Article(
      id: 5,
      title: 'Thế giới xe điện: Xu hướng không thể đảo ngược',
      description: 'Các hãng xe lớn đang chuyển hướng sang sản xuất xe điện...',
      content:
          'Từ Tesla đến VinFast, xe điện đang chiếm lĩnh thị trường nhờ thân thiện với môi trường và chi phí vận hành thấp. Hạ tầng trạm sạc cũng đang được đầu tư mạnh mẽ.',
      imageUrl:
          'https://tse3.mm.bing.net/th/id/OIP.dLzEj7F9tZYz3oVgaMaB4QHaEK?pid=Api&P=0&h=220',
    ),
    Article(
      id: 6,
      title: 'Ẩm thực Việt Nam trên bản đồ thế giới',
      description:
          'Phở, bánh mì và cà phê Việt đang chinh phục thực khách toàn cầu...',
      content:
          'Ẩm thực Việt Nam nổi bật nhờ sự hài hòa giữa hương vị và màu sắc. Các món ăn như phở, bún chả, nem rán đang được yêu thích ở nhiều quốc gia.',
      imageUrl:
          'https://tse3.mm.bing.net/th/id/OIP.MqVe-7r7x2Z7pzQ5OmPaVAHaFD?pid=Api&P=0&h=220',
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
          final isFav = favourites.contains(article);
          return ListTile(
            leading: Image.network(
              article.imageUrl,
              width: 70,
              fit: BoxFit.cover,
            ),
            title: Text(article.title),
            subtitle: Text(article.description),
            trailing: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.red : null,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailPage(
                    article: article,
                    isFavourite: isFav,
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
