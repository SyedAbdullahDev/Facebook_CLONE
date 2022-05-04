import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> users = [
      'Usama Sarwar',
      'Abdullah Naveed',
      'Uzma Ali',
      'Mehwish Hayat',
      'Anreios',
      'Usama Sarwar',
      'Abdullah Naveed',
      'Uzma Ali',
      'Mehwish Hayat',
      'Anreios',
      'Usama Sarwar',
      'Abdullah Naveed',
      'Uzma Ali',
      'Mehwish Hayat',
      'Anreios',
    ];
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
                    'Notifications',
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
                          Icons.search,
                          size: 30,
                        ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'New',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          for (int i = 0; i < 4; i++)
          Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person_pin,
                      color: Colors.blue.shade600,
                      size: 50,
                    ),
                    title:  Text(users[i]),
                    subtitle: const Text('Reacted on your post \n 3 min ago'),
                    trailing: const Icon(
                      Icons.more_horiz,
                    )
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'People you may know',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          for (int i = 0; i < 4; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'assets/favicon.png',
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          users[i],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          children: const [
                            Text('8 Mutual friends'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('Add frind'),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue.shade600),
                                        fixedSize: MaterialStateProperty.all(
                                            const Size(130, 12)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Remove Friend'),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey.shade300),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      fixedSize: MaterialStateProperty.all(
                                          const Size(130, 12)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('SEE ALL'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade300),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(const Size(480, 17)),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            thickness: 5,
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}
