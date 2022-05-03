// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListTile(
              /// Network Image
              // leading: Image.network(
              //   'https://www.usama.dev/favicon.png',
              //   height: 45,
              //   width: 45,
              // ),
              leading: Image.asset(
                'assets/favicon.png',
                height: 45,
                width: 45,
              ),
              title: SizedBox(
                height: 40.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    hintText: 'What/s on your mind?',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      height: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    Text('Live')
                  ],
                ),
                Container(
                  width: 1.0,
                  height: 17.0,
                  color: Colors.grey,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                    Text('Photo')
                  ],
                ),
                Container(
                  width: 1.0,
                  height: 17.0,
                  color: Colors.grey,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    Text('Room')
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 8,
            thickness: 10,
            color: Colors.grey.shade500,
          ),
          facebookPost(),
          facebookPost(),
          facebookPost(),
          facebookPost(),
          facebookPost(),
          facebookPost(),
          facebookPost(),
        ],
      ),
    );
  }
}

Column facebookPost() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/favicon.png',
                  height: 45,
                  width: 45,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Chris Holand',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Row(
                    children: [
                      const Text('5 m '),
                      Icon(
                        Icons.public,
                        color: Colors.grey[600],
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.more_horiz, color: Colors.grey),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(Icons.close, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('I am learning flutter'),
      ),
      Image.asset(
        'assets/usama.jpg',
        fit: BoxFit.contain,
      ),
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up_alt),
                    color: Colors.blue.shade800),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                ),
                Text('34')
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [Text('5 Comments')],
              ),
            ),
          ],
        ),
      ),
      Divider(
        height: 8,
        thickness: 3,
        color: Colors.grey.shade300,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey.shade700,
                ),
                Text('Like')
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.comment_outlined,
                  color: Colors.grey.shade700,
                ),
                Text('Comment')
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.grey.shade700,
                ),
                Text('Share')
              ],
            )
          ],
        ),
      ),
      Divider(
        height: 8,
        thickness: 9,
        color: Colors.grey.shade500,
      ),
    ],
  );
}
