class Medicine {
  String? name;
  String? type;
  int? duration;
  int? hoursLeft;
  DateTime? lastTimeTaken;
  bool? isDone;

  Medicine(
      {this.name,
      this.type,
      this.duration,
      this.isDone = false,
      this.lastTimeTaken,
      this.hoursLeft});

  Medicine.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    duration = json['hours_left'];
    isDone = json['is_done'];
    lastTimeTaken = json['last_time_taken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    data['hours_left'] = duration;
    data['is_done'] = isDone;
    data['last_time_taken'] = lastTimeTaken;
    return data;
  }
}
