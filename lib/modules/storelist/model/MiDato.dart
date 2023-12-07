class MiDato {
  final int id;
  final String name;
  final String location;
  final String ownerName;
  final String deliveryPersonName;

  MiDato(this.id, this.name, this.location, this.ownerName, this.deliveryPersonName);

  factory MiDato.fromJson(Map<String, dynamic> json) {
    return MiDato(
      json['id'] as int,
      json['name'] as String,
      json['location'] as String,
      json['owner']['name'] as String,
      json['deliveryPerson']['name'] as String,
    );
  }
}
