class Rate {
  int? spO2;
  double? temperature;
  int? bPM;
  int? timestamp;

  Rate({this.spO2, this.temperature, this.bPM, this.timestamp});

  Rate.fromJson(Map<dynamic, dynamic> json) {
    spO2 = json['SpO2'];
    temperature = json['temperature'];
    bPM = json['BPM'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SpO2'] = spO2;
    data['temperature'] = temperature;
    data['BPM'] = bPM;
    data['timestamp'] = timestamp;
    return data;
  }
}
