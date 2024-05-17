import 'package:flutter/material.dart';
import 'package:mab/models/drugs.dart';
import 'package:mab/shared/components/drug_list_item.dart';

class UpcomingListView extends StatelessWidget {
  const UpcomingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DrugListItem(
        m: (medicine.where((med) => !med.isDone!).toList())[index],
      ),
      itemCount: (medicine.where((med) => !med.isDone!).toList()).length,
      shrinkWrap: true,
    );
  }
}
