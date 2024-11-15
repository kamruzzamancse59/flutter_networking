import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import '../services/chopper_service.dart';

class ChopperScreen extends StatelessWidget {
  final PostService postService = PostService.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chopper Example')),
      body: FutureBuilder<Response>(
        future: postService.fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final data = snapshot.data!.body as List<dynamic>;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                );
              },
            );
          }
        },
      ),
    );
  }
}
