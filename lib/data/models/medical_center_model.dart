class MedicalCenterModel {
  final String name;
  final String location;
  final int reviews;
  final double rating;
  final String image;
  final bool isFavorite;

  const MedicalCenterModel({
    required this.name,
    required this.location,
    required this.reviews,
    required this.rating,
    required this.image,
    this.isFavorite = false,
  });
}
