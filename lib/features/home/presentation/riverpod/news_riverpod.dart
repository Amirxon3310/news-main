import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/home/data/datasources/remote_datasource.dart';
import 'package:news/features/home/data/models/news_model.dart';

final newsProvider = FutureProvider<List<NewsModel>>((ref) async {
  final data = RemoteDatasource();
  return await data.getAllData();
});
