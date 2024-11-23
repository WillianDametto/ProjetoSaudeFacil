import 'package:flutter/material.dart';

import '../models/post.dart';
import '../repository/post_repository.dart';

class ListarPosts extends StatefulWidget {
  const ListarPosts({super.key});
  @override
  State<ListarPosts> createState() => _ListarPostsState();
}

class _ListarPostsState extends State<ListarPosts> {
  Future<List<Post>>? postsFuture;

  _ListarPostsState() {
    PostRepository pr = PostRepository();
    postsFuture = pr.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Lista de Posts"),
      ),
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: postsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // AGUARDA CARREGAMENTO
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              // Dados obtivos, listar dados
              final posts = snapshot.data!;
              return buildPosts(posts);
            } else {
              // Quando não há dados, exibe não existe dados
              return const Text("Nenhum post para ser exibido!");
            }
          },
        ),
      ),
    );
  }

  //Método para construção dos posts
  Widget buildPosts(List<Post> posts) {
    //List view para exibir dados
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Container(
          color: Colors.grey.shade300,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          height: 100,
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(flex: 1, child: Image.network(post.url!)),
              const SizedBox(width: 10),
              Expanded(flex: 3, child: Text(post.title!)),
            ],
          ),
        );
      },
    );
  }
}
