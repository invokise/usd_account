import 'package:flutter/material.dart';

class CustomListCompaniesWidget extends StatelessWidget {
  const CustomListCompaniesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListTile> data = [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: Image.network(
            'https://proprikol.ru/wp-content/uploads/2021/02/kartinki-flag-ssha-5.jpg',
            fit: BoxFit.cover,
          ).image,
        ),
        title: const Text('MC'),
        subtitle: const Text('12:21'),
        trailing: const Text('+ \$82832'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: Image.network(
            'https://proprikol.ru/wp-content/uploads/2021/02/kartinki-flag-ssha-5.jpg',
            fit: BoxFit.cover,
          ).image,
        ),
        title: const Text('MC'),
        subtitle: const Text('12:21'),
        trailing: const Text('+ \$82832'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: Image.network(
            'https://proprikol.ru/wp-content/uploads/2021/02/kartinki-flag-ssha-5.jpg',
            fit: BoxFit.cover,
          ).image,
        ),
        title: const Text('MC'),
        subtitle: const Text('12:21'),
        trailing: const Text('+ \$82832'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: Image.network(
            'https://proprikol.ru/wp-content/uploads/2021/02/kartinki-flag-ssha-5.jpg',
            fit: BoxFit.cover,
          ).image,
        ),
        title: const Text('MC'),
        subtitle: const Text('12:21'),
        trailing: const Text('+ \$82832'),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          color: Colors.grey,
          height: 60,
          width: double.infinity,
          child: const Text(
            'Yesterday',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        ...data
      ],
    );
  }
}
