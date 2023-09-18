// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hello_world/post.dart';
import 'package:hello_world/post_list.dart';
import 'package:hello_world/text_input_widget.dart';

class MyHomePage extends StatefulWidget {
  final String name;

  const MyHomePage(this.name, {super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    setState(() {
      posts.add(Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello, World!')),
      body: Column(
        children: [
          Expanded(child: PostList(this.posts)),
          TextInputWidget(this.newPost),
        ],
      ),
    );
  }
}
