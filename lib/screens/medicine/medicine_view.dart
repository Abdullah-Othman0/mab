// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/screens/medicine/widgets/all_list_view.dart';
import 'package:mab/screens/medicine/widgets/done_list_view.dart';
import 'package:mab/screens/medicine/widgets/upcoming_list_view.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';

class MedicineView extends StatelessWidget {
  MedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        int currentIndex = AppCubit.get(context).medicineCurrentIndex;
        List<Widget> lists = [
          AllListView(),
          UpcomingListView(),
          DoneListView(),
        ];
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              pageTitle('Medicine'),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            AppCubit.get(context).changeMedicineView(0);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: currentIndex == 0
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: kDarkTeal,
                                    boxShadow: [
                                        BoxShadow(
                                            blurRadius: 20,
                                            color: kDarkTeal.withOpacity(0.4))
                                      ])
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade300),
                            child: Text(
                              'All',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            AppCubit.get(context).changeMedicineView(1);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: currentIndex == 1
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: kDarkTeal,
                                    boxShadow: [
                                        BoxShadow(
                                            blurRadius: 20,
                                            color: kDarkTeal.withOpacity(0.4))
                                      ])
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade300),
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            AppCubit.get(context).changeMedicineView(2);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: currentIndex == 2
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: kDarkTeal,
                                    boxShadow: [
                                        BoxShadow(
                                            blurRadius: 20,
                                            color: kDarkTeal.withOpacity(0.4))
                                      ])
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade300),
                            child: Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.grey.shade300),
                            child: Row(
                              children: [
                                Icon(Icons.add),
                                Text(
                                  ' Add',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: lists[currentIndex],
                  )),
            ],
          ),
        );
      },
    );
  }
}
