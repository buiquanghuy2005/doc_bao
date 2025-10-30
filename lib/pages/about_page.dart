import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giới thiệu'),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Bài tập lớn cuối kỳ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '• Tên môn học: Lập trình cho thiết bị di động.\n'
              '• Tên đề tài: Ứng dụng đọc báo.\n'
              '• Giáo viên hướng dẫn: Nguyễn Xuân Quế.\n'
              '• Sinh viên thực hiện: Bùi Quang Huy - 23010317.\n'
              '• Năm học: 2025.',
              style: TextStyle(fontSize: 18, height: 1.6),
            ),
            Spacer(),
            Center(
              child: Text(
                '© 2025 - Đại Học Phenikaa',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
