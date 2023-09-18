// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hello_world/post.dart';

class PostList extends StatefulWidget {
  final List<Post> listItems;

  const PostList(this.listItems, {super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void like(Function callback) {
    setState(() {
      callback();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listItems.length,
      itemBuilder: (context, index) {
        var post = this.widget.listItems[index];
        return Card(
            child: Row(children: <Widget>[
          Expanded(
              child: ListTile(
            title: Text(post.body),
            subtitle: Text(post.author),
          )),
          Row(children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Text(
                post.likes.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () => this.like(post.likePost),
              color: post.userLiked ? Colors.green : Colors.black,
            )
          ]),
        ]));
      },
    );
  }
}
