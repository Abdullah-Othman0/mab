import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/cubit.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/models/drug_model.dart';
import 'package:mab/shared/components/components.dart';
import 'package:searchfield/searchfield.dart';

// ignore: must_be_immutable
class DrugConflictView extends StatelessWidget {
  DrugConflictView({super.key});

  List<DrugModel> searchItems = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
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
                      child: SearchField<DrugModel>(
                        controller: _searchController,
                        hint: 'Search for Medicine',
                        suggestions: searchItems.length < 2
                            ? BlocProvider.of<AppCubit>(context)
                                .drugs
                                .map(
                                  (e) => SearchFieldListItem<DrugModel>(
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
                                .toList()
                            : [],
                        onTapOutside: (p0) {
                          FocusScope.of(context)
                              .requestFocus(FocusNode()); //remove focus
                          WidgetsBinding.instance.addPostFrameCallback(
                              (_) => _searchController.clear());
                        },
                        onSuggestionTap: (m) {
                          if (!searchItems.contains(m.item)) {
                            searchItems.add(m.item!);
                          }
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
                          AppCubit.get(context)
                              .checkConflict(context, searchItems);
                          FocusScope.of(context)
                              .requestFocus(new FocusNode()); //remove focus
                          WidgetsBinding.instance.addPostFrameCallback(
                              (_) => _searchController.clear());
                          searchItems = [];
                        }),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
