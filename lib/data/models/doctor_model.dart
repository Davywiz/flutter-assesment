class DoctorModel {
  final String name;
  final String specialty;
  final String hospital;
  final double rating;
  final int reviews;
  final int numOfYears;
  final String image;

  const DoctorModel({
    required this.name,
    required this.specialty,
    required this.hospital,
    required this.rating,
    required this.reviews,
    required this.image,
    required this.numOfYears,
  });
}
