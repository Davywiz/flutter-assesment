class MedicalCenterModel {
  final String name;
  final String location;
  final double rating;
  final String image;
  final String reviewText;

  const MedicalCenterModel({
    required this.reviewText,
    required this.name,
    required this.location,
    required this.rating,
    required this.image,
  });
}
