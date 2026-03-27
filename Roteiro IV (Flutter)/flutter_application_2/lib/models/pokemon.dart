class Pokemon {
  final int id;
  final String name;
  final String imageUrl;
  final String cryUrl;
  Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.cryUrl,
  });
  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      imageUrl:
          json['sprites']?['other']?['official-artwork']?['front_default'] ??
          '',
      cryUrl: json['cries']?['latest'] ?? '',
    );
  }
}
