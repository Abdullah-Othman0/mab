// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/cubit/states.dart';
import 'package:mab/models/blood_rate_model.dart';
import 'package:mab/models/drug_model.dart';
import 'package:mab/models/drugs.dart';
import 'package:mab/screens/blood_rates/blood_rates.dart';
import 'package:mab/screens/dashboard/dashboard.dart';
import 'package:mab/screens/drug_conflict/drug_conflict.dart';
import 'package:mab/screens/drug_conflict/widgets/conflict_popup.dart';
import 'package:mab/screens/drug_conflict/widgets/no_conflict_popup.dart';
import 'package:mab/screens/medicine/medicine_view.dart';
import 'package:mab/screens/profile.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(BuildContext context) => BlocProvider.of(context);
  int currentIndex = 0;
  int medicineCurrentIndex = 0;
  List<Widget> screens = [
    DashboardScreen(),
    BloodRatesView(),
    MedicineView(),
    DrugConflictView(),
    Profile()
  ];
  AppBar myAppBar = AppBar();

  DatabaseReference ref = FirebaseDatabase.instance.ref('UsersData');
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<Rate> allRates = [];
  Rate currentRate = Rate();

  void changeNavbar(int index, BuildContext context) {
    currentIndex = index;
    if (index == 3) {
      myAppBar = AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey.shade800, // Set your desired color
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ));
    } else {
      myAppBar = AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey.shade200, // Set your desired color
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ));
    }
    emit(NavbarState());
  }

  void searchChanged() {
    emit(SearchChanged());
  }

  void getData() async {
    ref
        .child('pQPOrleGFtaUuLz3HplGQ0XEyMq1')
        .child('readings')
        .onValue
        .listen((v) {
      allRates = [];
      for (var rate in v.snapshot.children) {
        Map r = rate.value as Map;
        var bpm = int.parse(r['BPM'].toString().split('.').first);
        var spO2 = int.parse(r['SpO2'].toString().split('.').first);
        var timestamp = int.parse(r['timestamp'].toString().split('.').first);
        var temperature = double.parse(r['temperature'].toString());
        Rate temp = Rate(
          bPM: bpm,
          spO2: spO2,
          temperature: temperature,
          timestamp: timestamp,
        );
        allRates.add(temp);
      }
      currentRate = allRates.last;
    });
    await Future.delayed(Duration(seconds: 3));
    emit(BloodRatesChanged());
  }

  void markAsDone(m) {
    medicine[medicine.indexOf(m)].isDone = true;
    medicine[medicine.indexOf(m)].hoursLeft = 0;
    emit(MarkedAsDone());
  }

  void changeMedicineView(i) {
    medicineCurrentIndex = i;
    emit(MedicineIndexChanged());
  }

  List<DrugModel> drugs = [];
  void getDrugs() {
    emit(AllDrugsLoading());
    if (drugs.isEmpty) {
      firestore.collection('medicine').get().then((v) {
        for (var m in v.docs) {
          drugs.add(DrugModel.fromJson(m.data()));
        }
        emit(AllDrugsSuccess());
      }).catchError((e) {
        print(e.toString());
        emit(AllDrugsError());
      });
    }
  }

  bool isConflict = false;
  void checkConflict(context, List<DrugModel> d) {
    isConflict = false;
    emit(CheckConflictLoading());
    firestore.collection('conflicts').get().then((v) {
      for (var c in v.docs) {
        if ((c.data()['drug1'] == d[0].substance ||
                c.data()['drug1'] == d[0].substance) &&
            (c.data()['drug2'] == d[1].substance ||
                c.data()['drug2'] == d[1].substance)) {
          print('done');
          isConflict = true;
          break;
        }
      }
      showDialog(
          context: context,
          builder: (context) => Scaffold(
                backgroundColor:
                    const Color.fromARGB(255, 115, 104, 104).withOpacity(0.2),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      isConflict ? ConflictPopup() : NoConflictPopup(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'CLOSE',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      )
                    ],
                  ),
                ),
              ));
      emit(CheckConflictSuccess());
    }).catchError((e) {
      print(e.toString());
      emit(CheckConflictError());
    });
  }
}
