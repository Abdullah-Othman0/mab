import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/shared/styles/colors.dart';

class HeartRateView extends StatelessWidget {
  const HeartRateView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
        AppCubit c = BlocProvider.of<AppCubit>(context);

        return Scaffold(
          appBar: AppBar(
            title: Text('Heart rate'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 40, color: kDarkTeal.withOpacity(0.3))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Rate',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.favorite_sharp,
                              color:
                                  kDarkBlue, // Theme.of(context).textTheme.primary,
                              size: 50,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 4, 0),
                              child: Text(
                                c.allRates.isEmpty
                                    ? '0'
                                    : c.allRates.last.bPM.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'Inter',
                                      color:
                                          kDarkBlue, // Theme.of(context).textTheme.secondary,
                                      fontSize: 60,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Text(
                              'bpm',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                LineChart(
                  LineChartData(
                      // read about it in the LineChartData section
                      ),
                  duration: Duration(milliseconds: 150), 
                  curve: Curves.linear, 
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
