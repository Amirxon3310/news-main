import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/features/home/data/models/news_model.dart';

class RemoteDatasource {
  Future<List<NewsModel>> getAllData() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines/sources?apiKey=41d53e78c04f4beca040ad6abec2bf81');
    final response = await http.get(url);
    final decodedData = jsonDecode(response.body);
    print(decodedData['sources']);
    List<NewsModel> news = [];
    try {
      for (var element in decodedData['sources']) {
        news.add(NewsModel.fromMap(element));
      }
    } catch (e) {
      print(e);
    }
    return news;
  }
}
