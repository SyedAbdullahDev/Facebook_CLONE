import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({Key? key}) : super(key: key);

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
              children: const [
                Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          Divider(
            height: 9,
            thickness: 7,
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: Image.asset(
              'assets/favicon.png',
              height: 60,
              width: 60,
            ),
            title: const Text(
              'Ali',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('See your profile'),
          ),
          Divider(
            height: 9,
            thickness: 7,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 9,
                      child: SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/usama.jpg',
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'I am Learning Flutter \n widgets',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(Icons.arrow_forward_ios),
                                Text('Flutter')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    for (var i = 0; i < 7; i++)
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                        child: SizedBox(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Row(
                                  children: const [Icon(Icons.groups)],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Groups',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    for (var i = 0; i < 7; i++)
                    Card(
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [Icon(Icons.groups)],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Groups',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
