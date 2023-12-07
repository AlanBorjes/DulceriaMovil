class DatoVisit {
  final String storeName;
  final String date;
  final String status;

  DatoVisit(this.storeName, this.date, this.status);

  factory DatoVisit.fromJson(Map<String, dynamic> json) {
    return DatoVisit(
      json['store']['name'],
      json['day_visit'],
      json['status']['name'],
    );
  }
}
