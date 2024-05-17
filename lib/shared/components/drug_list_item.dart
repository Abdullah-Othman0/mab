// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/models/medicine_model.dart';

import '../styles/colors.dart';

class DrugListItem extends StatelessWidget {
  DrugListItem({super.key, required this.m});
  Medicine m;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
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
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  m.name!,
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Text(
                    m.type!,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                ),
                Divider(
                  height: 24,
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
                m.isDone!
                    ? const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Done',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Hours left: ',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8, 0, 0, 0),
                            child: Text(
                              m.hoursLeft.toString(),
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade500),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubit>(context).markAsDone(m);
                            },
                            child: Container(
                              width: 100,
                              height: 32,
                              decoration: BoxDecoration(
                                color: kDarkTeal,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade300),
                              ),
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
