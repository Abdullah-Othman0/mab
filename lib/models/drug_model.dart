class DrugModel {
  String? name;
  String? substance;

  DrugModel({this.name, this.substance});

  DrugModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    substance = json['substance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['substance'] = substance;
    return data;
  }
}
