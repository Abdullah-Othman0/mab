import 'package:flutter/material.dart';
import 'package:mab/screens/blood_rates/blood_rates.dart';
import 'package:mab/screens/profile.dart';

import '../../../shared/components/components.dart';
import '../../../shared/styles/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8),
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: kDarkTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Text(
              'Mark Wael',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                navigateTo(context, const Profile());
              },
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Blood Rates'),
              onTap: () {
                navigateTo(context, BloodRatesView());
              },
            ),
            const ListTile(
              leading: Icon(Icons.medical_information),
              title: Text('Drug Conflict'),
            ),
            const ListTile(
              leading: Icon(Icons.assignment_rounded),
              title: Text('Medical History'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.redAccent,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Privacy Policy'),
                ),
                Container(
                  height: 14,
                  width: 1,
                  color: Colors.grey,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Contact us'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
