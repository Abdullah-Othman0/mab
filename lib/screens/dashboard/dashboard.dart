import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/models/drugs.dart';
import 'package:mab/shared/styles/colors.dart';

import '../../layout/cubit/cubit.dart';
import '../../shared/components/drug_list_item.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        AppCubit c = BlocProvider.of<AppCubit>(context);
        return SafeArea(
          child: state is! AppInitialState && c.currentRate.timestamp != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8),
                        child: Row(
                          children: [
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
                                  child: Image.asset(
                                    'assets/images/user.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // navigateTo(context, const Profile());
                              },
                              child: const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
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
                                      style: TextStyle(
                                          fontSize: 14, color: kDarkTeal),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 8, 0),
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0x98FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
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
                                                      color:
                                                          Colors.grey.shade300),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 8, 0),
                                                  child: Text(
                                                    c.currentRate.bPM
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 34,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Text(
                                                  'bpm',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          Colors.grey.shade300),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 8, 0),
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0x98FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
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
                                                      color:
                                                          Colors.grey.shade100),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 8, 0),
                                                  child: Text(
                                                    c.currentRate.temperature!
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 34,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Text(
                                                  '°C',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          Colors.grey.shade100),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: Text(
                              'Upcoming Medicine',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 16, 0),
                            child: TextButton(
                              onPressed: () {
                                AppCubit.get(context).changeNavbar(2, context);
                              },
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
                            itemBuilder: (context, index) => DrugListItem(
                              m: (medicine
                                  .where((med) => !med.isDone!)
                                  .toList())[index],
                            ),
                            itemCount:
                                (medicine.where((med) => !med.isDone!).toList())
                                    .length,
                            shrinkWrap: true,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }
}
