import 'package:facebook/home_tab.dart';
import 'package:flutter/material.dart';

class GroupTab extends StatelessWidget {
  const GroupTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: const [
                  Text(
                    'Groups',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ]),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 26,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          size: 26,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 26,
                        )),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 6,
            color: Colors.grey.shade500,
          ),
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
