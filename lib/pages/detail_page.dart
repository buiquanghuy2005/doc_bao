import 'package:flutter/material.dart';
import '../models/article.dart';

class DetailPage extends StatefulWidget {
  final Article article;
  final Function(Article) onAddToFavourite;
  final bool isFavourite;

  const DetailPage({
    super.key,
    required this.article,
    required this.onAddToFavourite,
    this.isFavourite = false,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late bool _isFavourite;

  @override
  void initState() {
    super.initState();
    _isFavourite = widget.isFavourite;
  }

  void _toggleFavourite() {
    widget.onAddToFavourite(widget.article);
    setState(() {
      _isFavourite = !_isFavourite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _isFavourite
              ? 'Đã thêm vào danh sách yêu thích'
              : 'Đã xoá khỏi danh sách yêu thích',
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.article.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.article.imageUrl, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.article.content,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(
                _isFavourite ? Icons.favorite : Icons.favorite_border,
                color: _isFavourite ? Colors.red : null,
              ),
              label: Text(
                _isFavourite ? 'Xoá khỏi yêu thích' : 'Thêm vào yêu thích',
              ),
              onPressed: _toggleFavourite,
            ),
          ],
        ),
      ),
    );
  }
}
