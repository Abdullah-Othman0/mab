import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/shared/styles/colors.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'mab',
              style: TextStyle(color: kColorE),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: kColorE),
          ),
          body:
              AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
          drawer: Drawer(
            backgroundColor: Colors.white.withOpacity(0.9),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [],
            ),
          ),
        );
      },
    );
  }
}
