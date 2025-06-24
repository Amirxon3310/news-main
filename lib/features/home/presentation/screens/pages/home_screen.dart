import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/home/presentation/riverpod/news_riverpod.dart';
import 'package:news/features/home/presentation/screens/pages/news_details_page.dart';
import 'package:news/features/home/presentation/widgets/news_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  final categories = const [
    'For You',
    'Top',
    'World',
    'Politics',
    'Entertainment'
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsAsync = ref.watch(newsProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.diamond),
        title: Text('News 24', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Stack(
            children: [
              Icon(Icons.notifications_none, color: Colors.black),
              Positioned(
                top: 4,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 4,
                ),
              )
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: i == 0 ? Colors.black : Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    categories[i],
                    style: TextStyle(
                      color: i == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: newsAsync.when(
              data: (news) => ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  final item = news[index];
                  return NewsWidget(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsDetailPage(
                            image: 'https://picsum.photos/$index',
                            news: item,
                          ),
                        ),
                      );
                    },
                    image: 'https://picsum.photos/$index',
                    title: item.description,
                    author: item.name,
                    category: item.country,
                    time: item.url,
                  );
                },
              ),
              loading: () => Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Xatolik: $e')),
            ),
          ),
        ],
      ),
    );
  }
}
