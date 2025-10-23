import '../../gen/assets.gen.dart';

import '../models/medical_center_model.dart';

final mockMedicalCenters = [
  MedicalCenterModel(
    name: 'Tyna Medical Center',
    location: 'Udomsuk, Bang Na',
    reviews: 2000,
    rating: 4.8,
    image: Assets.images.hospitalBuilding.path,
    isFavorite: false,
  ),
  MedicalCenterModel(
    name: 'Grace Health Clinic',
    location: 'Lekki Phase 1, Lagos',
    reviews: 1600,
    rating: 4.9,
    image: Assets.images.hospitalBuilding.path,
    isFavorite: false,
  ),
  MedicalCenterModel(
    name: 'PrimeCare Hospital',
    location: 'Abuja Central',
    reviews: 1200,
    rating: 4.7,
    image: Assets.images.hospitalBuilding.path,
    isFavorite: true,
  ),
];
