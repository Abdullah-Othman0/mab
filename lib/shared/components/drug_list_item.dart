import 'package:flutter/material.dart';

import '../styles/colors.dart';

class DrugListItem extends StatelessWidget {
  const DrugListItem({super.key});

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
                const Text(
                  'Trimed Flu',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
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
                    const Text(
                      'Due',
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        'Tuesday, 10:00am',
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ),
                    const Spacer(),
                    Container(
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
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
