class ConflictModel {
  String? drug1;
  String? drug2;

  ConflictModel({this.drug1, this.drug2});

  ConflictModel.fromJson(Map<String, dynamic> json) {
    drug1 = json['drug1'];
    drug2 = json['drug2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['drug1'] = drug1;
    data['drug2'] = drug2;
    return data;
  }
}
