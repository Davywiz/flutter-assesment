class DoctorModel {
  final String name;
  final String specialty;
  final int years;
  final double rating;
  final int reviews;
  final String hospital;
  final double distanceKm;
  final String avatar; // asset path or network url
  final bool isFavorite;

  const DoctorModel({
    required this.name,
    required this.specialty,
    required this.years,
    required this.rating,
    required this.reviews,
    required this.hospital,
    required this.distanceKm,
    required this.avatar,
    this.isFavorite = false,
  });
}
