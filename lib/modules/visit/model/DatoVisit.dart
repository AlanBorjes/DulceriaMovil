class DatoVisit {
  final String titulo;
  final String subtitulo;
  final String date;

  DatoVisit(
      {required this.titulo, required this.subtitulo, required this.date});

  factory DatoVisit.fromJson(Map<String, dynamic> json) {
    return DatoVisit(
      titulo: json['titulo'],
      subtitulo: json['subtitulo'],
      date: json['date'],
    );
  }
}
