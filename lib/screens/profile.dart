import 'package:flutter/material.dart';
import 'package:mab/shared/styles/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CircleAvatar(
                  backgroundColor: kDarkBlue,
                  backgroundImage: NetworkImage(''),
                  radius: 60,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      'Sayed Moawad',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Sayed Mosaad Moawad',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkTeal,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'E-mail:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'sayedmoawad@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkTeal,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Phone:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '+181234567891',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkTeal,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Age:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '25',
                    style: TextStyle(
                      fontSize: 18,
                      color: kDarkTeal,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Center(
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateColor.resolveWith((states) => kLightTeal),
                    foregroundColor:
                        MaterialStateColor.resolveWith((states) => kDarkTeal)),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(color: kDarkTeal),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
