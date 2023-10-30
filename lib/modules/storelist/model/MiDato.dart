class MiDato {
  final String titulo;
  final String subtitulo;

  MiDato({required this.titulo, required this.subtitulo});

  factory MiDato.fromJson(Map<String, dynamic> json) {
    return MiDato(
      titulo: json['titulo'],
      subtitulo: json['subtitulo'],
    );
  }
}
