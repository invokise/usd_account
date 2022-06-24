import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 40,
              backgroundImage: Image.network(
                'https://proprikol.ru/wp-content/uploads/2021/02/kartinki-flag-ssha-5.jpg',
                fit: BoxFit.cover,
              ).image,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Center(
                      child: Text(
                        'USD Account',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side:
                            BorderSide(color: Colors.grey.shade900, width: 1.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Hide',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\$',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  '180,970.83',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
