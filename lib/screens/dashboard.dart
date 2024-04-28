import 'package:flutter/material.dart';
import 'package:mab/screens/profile.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';

import '../shared/components/drug_list_item.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    DrawerButton(
                      onPressed: () {
                        _key.currentState!.openDrawer();
                      },
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: kDarkTeal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const Profile());
                      },
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Evening, Mark',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'how are you today?',
                              style: TextStyle(fontSize: 14, color: kDarkTeal),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: kDarkTeal,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 0, 8, 0),
                                          child: Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              color: const Color(0x98FFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                            child: const Icon(
                                              Icons.monitor_heart,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Heart Rate',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade300),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 8, 0),
                                          child: Text(
                                            '80',
                                            style: TextStyle(
                                                fontSize: 34,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          'bpm',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade300),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: kLightTeal,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 0, 8, 0),
                                          child: Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              color: const Color(0x98FFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                            child: const Icon(
                                              Icons.thermostat_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Tempreture',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey.shade100),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 8, 0),
                                          child: Text(
                                            '37.5',
                                            style: TextStyle(
                                                fontSize: 34,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          '°C',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade100),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Text(
                      'Upcoming Medicine',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('View All'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.outer,
                          color: Color(0x11000000))
                    ],
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) => const DrugListItem(),
                    itemCount: 15,
                    shrinkWrap: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
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
              const ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Health Monitors'),
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
      ),
    );
  }
}
