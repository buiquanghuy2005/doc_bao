import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleDetailPage extends StatefulWidget {
  final Article article;
  final bool isFavourite;
  final Function(Article) onToggleFavourite;

  const ArticleDetailPage({
    super.key,
    required this.article,
    required this.isFavourite,
    required this.onToggleFavourite,
  });

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage>
    with SingleTickerProviderStateMixin {
  late bool isFav;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    isFav = widget.isFavourite;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 1.0,
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.value = 1.0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleFavourite() {
    setState(() => isFav = !isFav);
    widget.onToggleFavourite(widget.article);
    _controller.forward(from: 0.0);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFav ? 'Đã thêm vào yêu thích ❤️' : 'Đã xóa khỏi yêu thích 💔',
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title),
        actions: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: IconButton(
              icon: Icon(
                isFav ? Icons.favorite : Icons.favorite_border,
                color: isFav
                    ? const Color(0xFFFF5252)
                    : const Color(0xFFBDBDBD),
                size: 28,
              ),
              onPressed: toggleFavourite,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.article.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.article.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              widget.article.description,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Divider(height: 32),
            Text(
              widget.article.content,
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
