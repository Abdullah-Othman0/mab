import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/models/drugs.dart';
import 'package:mab/models/medicine_model.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';
import 'package:searchfield/searchfield.dart';

class DrugConflictView extends StatelessWidget {
  DrugConflictView({super.key});

  List<Medicine> searchItems = [];

  bool? isConflict;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            pageTitle('Drug Conflict'),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SearchField<Medicine>(
                      hint: 'Search for Medicine',
                      suggestions: medicine
                          .map(
                            (e) => SearchFieldListItem<Medicine>(
                              e.name!,
                              item: e,
                              // Use child to show Custom Widgets in the suggestions
                              // defaults to Text widget
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(e.name!),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      onSuggestionTap: (m) {
                        searchItems.add(m.item!);
                        isConflict = null;
                        AppCubit.get(context).searchChanged();
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(searchItems[index].name!),
                            IconButton(
                              onPressed: () {
                                searchItems.removeWhere((element) =>
                                    element.name == searchItems[index].name);
                                AppCubit.get(context).searchChanged();
                              },
                              icon: Icon(Icons.cancel_outlined),
                            )
                          ],
                        ),
                      ),
                      itemCount: searchItems.length,
                    ),
                  ),
                  defaultbotton(
                      text: 'Search',
                      onPress: () {
                        isConflict = true;
                        searchItems = [];
                        AppCubit.get(context).searchChanged();
                      }),
                  isConflict != null
                      ? isConflict!
                          ? Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 30, 12, 12),
                              child: Container(
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x34090F13),
                                      offset: Offset(
                                        0.0,
                                        2,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 140,
                                        decoration: BoxDecoration(
                                          color: kDarkTeal,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.check_circle,
                                                color: Colors.white,
                                                size: 50,
                                              ),
                                              Text(
                                                'No Interaction',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 5, 8, 5),
                                        child: Text(
                                          'Please get your doctor consultant',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 30, 12, 12),
                              child: Container(
                                width: 230,
                                decoration: BoxDecoration(
                                  color: kDarkTeal,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x34090F13),
                                      offset: Offset(
                                        0.0,
                                        2,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 140,
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.cancel,
                                                color: Colors.white,
                                                size: 50,
                                              ),
                                              Text(
                                                'Interaction Found',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 5, 8, 5),
                                        child: Text(
                                          'Please get your doctor consultant',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
