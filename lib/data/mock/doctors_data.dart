import 'package:flutter_assesment/gen/assets.gen.dart';

import '../models/doctor_model.dart';

final mockNearestDoctors = <DoctorModel>[
  DoctorModel(
    name: 'Clark Mark',
    specialty: 'Dentist',
    years: 4,
    rating: 4.8,
    reviews: 40,
    hospital: 'Horizon Medical Center',
    distanceKm: 2.0,
    avatar: Assets.images.doctor1.path,
    isFavorite: false,
  ),
  DoctorModel(
    name: 'White Mond',
    specialty: 'Neurologist',
    years: 15,
    rating: 4.9,
    reviews: 440,
    hospital: 'Horizon Medical Center',
    distanceKm: 2.0,
    avatar: Assets.images.doctor2.path,
    isFavorite: true,
  ),
  DoctorModel(
    name: 'Wilson Herwitz',
    specialty: 'General Practitioner',
    years: 10,
    rating: 4.9,
    reviews: 190,
    hospital: 'Horizon Medical Center',
    distanceKm: 2.0,
    avatar: Assets.images.doctor3.path,
    isFavorite: false,
  ),
];
