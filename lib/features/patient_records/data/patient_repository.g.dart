// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$databaseHash() => r'64e68ef891caef3da1e4e2621a495f73a5ce2a50';

/// See also [database].
@ProviderFor(database)
final databaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  database,
  name: r'databaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$databaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DatabaseRef = AutoDisposeProviderRef<AppDatabase>;
String _$patientRepositoryHash() => r'15d41ec3769e2db32dcecdd7d00f6e5dac88d5f4';

/// See also [patientRepository].
@ProviderFor(patientRepository)
final patientRepositoryProvider =
    AutoDisposeProvider<PatientRepository>.internal(
  patientRepository,
  name: r'patientRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$patientRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PatientRepositoryRef = AutoDisposeProviderRef<PatientRepository>;
String _$patientsStreamHash() => r'47b3814e098b4643d6cd1c59f850d1b152317634';

/// See also [patientsStream].
@ProviderFor(patientsStream)
final patientsStreamProvider =
    AutoDisposeStreamProvider<List<Patient>>.internal(
  patientsStream,
  name: r'patientsStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$patientsStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PatientsStreamRef = AutoDisposeStreamProviderRef<List<Patient>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
