// * IMPORTA LIB PARA LIDAR COM REQUISIÇÕES HTTP
import 'package:http/http.dart' as http;
// * IMPORTA LIB DART CONVERT
import 'dart:convert';

import '../models/post.dart';

class PostRepository {
  Future<List<Post>> getPosts() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/albums/1/photos");
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});
    final List body = json.decode(response.body);
    return body.map((e) => Post.fromJson(e)).toList();
  }
}
