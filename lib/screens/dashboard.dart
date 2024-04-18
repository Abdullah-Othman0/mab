import 'package:flutter/material.dart';
import 'package:mab/screens/profile.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.dehaze),
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
                        navigateTo(context, Profile());
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Text(
                      'Upcoming Medicine',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('View All'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
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
                    itemBuilder: (context, index) => ListItem(),
                    itemCount: 15,
                    shrinkWrap: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trimed Flu',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Text(
                    'Pills',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                ),
                Divider(
                  height: 24,
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Due',
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        'Tuesday, 10:00am',
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 100,
                      height: 32,
                      decoration: BoxDecoration(
                        color: kDarkTeal,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Done',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
