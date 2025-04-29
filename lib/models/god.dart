class God {
  final String name;
  final String domain;
  final String description;
  final String image;

  God({
    required this.name,
    required this.domain,
    required this.description,
    required this.image,
  });

  factory God.fromJson(Map<String, dynamic> json) {
    return God(
      name: json['name'],
      domain: json['domain'],
      description: json['description'],
      image: json['image'],
    );
  }
}
