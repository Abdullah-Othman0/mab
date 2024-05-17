import 'package:flutter/material.dart';
import 'package:mab/models/drugs.dart';
import 'package:mab/shared/components/drug_list_item.dart';

class AllListView extends StatefulWidget {
  AllListView({super.key});

  @override
  State<AllListView> createState() => _AllListViewState();
}

class _AllListViewState extends State<AllListView> {
  var temp = medicine;

  @override
  Widget build(BuildContext context) {
    temp.sort((a, b) => b.hoursLeft!.compareTo(a.hoursLeft!));
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DrugListItem(
        m: temp[index],
      ),
      itemCount: medicine.length,
      shrinkWrap: true,
    );
  }
}
