import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xff101518),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              pageTitle('Profile', color: Colors.white),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [kDarkBlue, kDarkTeal],
                            stops: [0, 1],
                            begin: AlignmentDirectional(1, -1),
                            end: AlignmentDirectional(-1, 1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                'assets/images/user.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 12),
                            child: Text(
                              'MARK WAEL',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                  ),
                            ),
                          ),
                          Text(
                            '22-2-1999',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontFamily: 'Inter',
                                  color: Colors.grey,
                                  letterSpacing: 0,
                                ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(
                          0,
                          -1,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Status',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0,
                                  ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 16, 0, 0),
                                child: Wrap(
                                  spacing: 16,
                                  runSpacing: 16,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff5fbfb),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.monitor_heart_sharp,
                                              color: Color(0xff101518),
                                              size: 44,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 4),
                                              child: Text(
                                                BlocProvider.of<AppCubit>(
                                                        context)
                                                    .currentRate
                                                    .bPM!
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'heart rate',
                                              textAlign: TextAlign.center,
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
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff5fbfb),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.thermostat_sharp,
                                              color: Color(0xff101518),
                                              size: 44,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 4),
                                              child: Text(
                                                BlocProvider.of<AppCubit>(
                                                        context)
                                                    .currentRate
                                                    .temperature!
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'temprature',
                                              textAlign: TextAlign.center,
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
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 16, 0, 0),
                                child: Wrap(
                                  spacing: 16,
                                  runSpacing: 16,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff5fbfb),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.monitor_weight_outlined,
                                              color: Color(0xff101518),
                                              size: 44,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 4),
                                              child: Text(
                                                '65',
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'weight',
                                              textAlign: TextAlign.center,
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
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff5fbfb),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.height,
                                              color: Color(0xff101518),
                                              size: 44,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 4),
                                              child: Text(
                                                '170',
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'height',
                                              textAlign: TextAlign.center,
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
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: kDarkTeal,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          alignment: const AlignmentDirectional(0, 0),
                          child: Text(
                            'Add Information',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ],
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
