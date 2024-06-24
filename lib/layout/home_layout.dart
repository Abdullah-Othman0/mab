import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/shared/styles/colors.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..getData()
        ..getDrugs(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size(double.infinity, 30),
                child: SizedBox(
                    height: 0,
                    child: BlocProvider.of<AppCubit>(context).myAppBar)),
            body: AppCubit.get(context)
                .screens[AppCubit.get(context).currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: AppCubit.get(context).currentIndex,
              unselectedItemColor: Colors.grey.shade400,
              selectedItemColor: kDarkBlue,
              onTap: (value) =>
                  AppCubit.get(context).changeNavbar(value, context),
              items: const [
                BottomNavigationBarItem(
                    label: '', icon: FaIcon(FontAwesomeIcons.house)),
                BottomNavigationBarItem(
                    label: '', icon: FaIcon(FontAwesomeIcons.heartCircleCheck)),
                BottomNavigationBarItem(
                    label: '', icon: FaIcon(FontAwesomeIcons.pills)),
                BottomNavigationBarItem(
                    label: '', icon: Icon(Icons.manage_search_rounded)),
                BottomNavigationBarItem(
                    label: '', icon: FaIcon(FontAwesomeIcons.person)),
              ],
            ),
          );
        },
      ),
    );
  }
}
