// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PatientsTable extends Patients with TableInfo<$PatientsTable, Patient> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PatientsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<String> age = GeneratedColumn<String>(
      'age', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _diseaseMeta =
      const VerificationMeta('disease');
  @override
  late final GeneratedColumn<String> disease = GeneratedColumn<String>(
      'disease', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _locMeta = const VerificationMeta('loc');
  @override
  late final GeneratedColumn<String> loc = GeneratedColumn<String>(
      'loc', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _bloodGroupMeta =
      const VerificationMeta('bloodGroup');
  @override
  late final GeneratedColumn<String> bloodGroup = GeneratedColumn<String>(
      'blood_group', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dobMeta = const VerificationMeta('dob');
  @override
  late final GeneratedColumn<DateTime> dob = GeneratedColumn<DateTime>(
      'dob', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _contactMeta =
      const VerificationMeta('contact');
  @override
  late final GeneratedColumn<String> contact = GeneratedColumn<String>(
      'contact', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emergencyContactMeta =
      const VerificationMeta('emergencyContact');
  @override
  late final GeneratedColumn<String> emergencyContact = GeneratedColumn<String>(
      'emergency_contact', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isSyncedMeta =
      const VerificationMeta('isSynced');
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
      'is_synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        age,
        disease,
        loc,
        date,
        bloodGroup,
        dob,
        contact,
        emergencyContact,
        address,
        isSynced
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'patients';
  @override
  VerificationContext validateIntegrity(Insertable<Patient> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('disease')) {
      context.handle(_diseaseMeta,
          disease.isAcceptableOrUnknown(data['disease']!, _diseaseMeta));
    } else if (isInserting) {
      context.missing(_diseaseMeta);
    }
    if (data.containsKey('loc')) {
      context.handle(
          _locMeta, loc.isAcceptableOrUnknown(data['loc']!, _locMeta));
    } else if (isInserting) {
      context.missing(_locMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('blood_group')) {
      context.handle(
          _bloodGroupMeta,
          bloodGroup.isAcceptableOrUnknown(
              data['blood_group']!, _bloodGroupMeta));
    } else if (isInserting) {
      context.missing(_bloodGroupMeta);
    }
    if (data.containsKey('dob')) {
      context.handle(
          _dobMeta, dob.isAcceptableOrUnknown(data['dob']!, _dobMeta));
    }
    if (data.containsKey('contact')) {
      context.handle(_contactMeta,
          contact.isAcceptableOrUnknown(data['contact']!, _contactMeta));
    }
    if (data.containsKey('emergency_contact')) {
      context.handle(
          _emergencyContactMeta,
          emergencyContact.isAcceptableOrUnknown(
              data['emergency_contact']!, _emergencyContactMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Patient map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Patient(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      age: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}age'])!,
      disease: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}disease'])!,
      loc: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}loc'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      bloodGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}blood_group'])!,
      dob: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}dob']),
      contact: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact']),
      emergencyContact: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}emergency_contact']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
    );
  }

  @override
  $PatientsTable createAlias(String alias) {
    return $PatientsTable(attachedDatabase, alias);
  }
}

class Patient extends DataClass implements Insertable<Patient> {
  final int id;
  final String name;
  final String age;
  final String disease;
  final String loc;
  final DateTime date;
  final String bloodGroup;
  final DateTime? dob;
  final String? contact;
  final String? emergencyContact;
  final String? address;
  final bool isSynced;
  const Patient(
      {required this.id,
      required this.name,
      required this.age,
      required this.disease,
      required this.loc,
      required this.date,
      required this.bloodGroup,
      this.dob,
      this.contact,
      this.emergencyContact,
      this.address,
      required this.isSynced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['age'] = Variable<String>(age);
    map['disease'] = Variable<String>(disease);
    map['loc'] = Variable<String>(loc);
    map['date'] = Variable<DateTime>(date);
    map['blood_group'] = Variable<String>(bloodGroup);
    if (!nullToAbsent || dob != null) {
      map['dob'] = Variable<DateTime>(dob);
    }
    if (!nullToAbsent || contact != null) {
      map['contact'] = Variable<String>(contact);
    }
    if (!nullToAbsent || emergencyContact != null) {
      map['emergency_contact'] = Variable<String>(emergencyContact);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['is_synced'] = Variable<bool>(isSynced);
    return map;
  }

  PatientsCompanion toCompanion(bool nullToAbsent) {
    return PatientsCompanion(
      id: Value(id),
      name: Value(name),
      age: Value(age),
      disease: Value(disease),
      loc: Value(loc),
      date: Value(date),
      bloodGroup: Value(bloodGroup),
      dob: dob == null && nullToAbsent ? const Value.absent() : Value(dob),
      contact: contact == null && nullToAbsent
          ? const Value.absent()
          : Value(contact),
      emergencyContact: emergencyContact == null && nullToAbsent
          ? const Value.absent()
          : Value(emergencyContact),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      isSynced: Value(isSynced),
    );
  }

  factory Patient.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Patient(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      age: serializer.fromJson<String>(json['age']),
      disease: serializer.fromJson<String>(json['disease']),
      loc: serializer.fromJson<String>(json['loc']),
      date: serializer.fromJson<DateTime>(json['date']),
      bloodGroup: serializer.fromJson<String>(json['bloodGroup']),
      dob: serializer.fromJson<DateTime?>(json['dob']),
      contact: serializer.fromJson<String?>(json['contact']),
      emergencyContact: serializer.fromJson<String?>(json['emergencyContact']),
      address: serializer.fromJson<String?>(json['address']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'age': serializer.toJson<String>(age),
      'disease': serializer.toJson<String>(disease),
      'loc': serializer.toJson<String>(loc),
      'date': serializer.toJson<DateTime>(date),
      'bloodGroup': serializer.toJson<String>(bloodGroup),
      'dob': serializer.toJson<DateTime?>(dob),
      'contact': serializer.toJson<String?>(contact),
      'emergencyContact': serializer.toJson<String?>(emergencyContact),
      'address': serializer.toJson<String?>(address),
      'isSynced': serializer.toJson<bool>(isSynced),
    };
  }

  Patient copyWith(
          {int? id,
          String? name,
          String? age,
          String? disease,
          String? loc,
          DateTime? date,
          String? bloodGroup,
          Value<DateTime?> dob = const Value.absent(),
          Value<String?> contact = const Value.absent(),
          Value<String?> emergencyContact = const Value.absent(),
          Value<String?> address = const Value.absent(),
          bool? isSynced}) =>
      Patient(
        id: id ?? this.id,
        name: name ?? this.name,
        age: age ?? this.age,
        disease: disease ?? this.disease,
        loc: loc ?? this.loc,
        date: date ?? this.date,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        dob: dob.present ? dob.value : this.dob,
        contact: contact.present ? contact.value : this.contact,
        emergencyContact: emergencyContact.present
            ? emergencyContact.value
            : this.emergencyContact,
        address: address.present ? address.value : this.address,
        isSynced: isSynced ?? this.isSynced,
      );
  @override
  String toString() {
    return (StringBuffer('Patient(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('disease: $disease, ')
          ..write('loc: $loc, ')
          ..write('date: $date, ')
          ..write('bloodGroup: $bloodGroup, ')
          ..write('dob: $dob, ')
          ..write('contact: $contact, ')
          ..write('emergencyContact: $emergencyContact, ')
          ..write('address: $address, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, age, disease, loc, date, bloodGroup,
      dob, contact, emergencyContact, address, isSynced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Patient &&
          other.id == this.id &&
          other.name == this.name &&
          other.age == this.age &&
          other.disease == this.disease &&
          other.loc == this.loc &&
          other.date == this.date &&
          other.bloodGroup == this.bloodGroup &&
          other.dob == this.dob &&
          other.contact == this.contact &&
          other.emergencyContact == this.emergencyContact &&
          other.address == this.address &&
          other.isSynced == this.isSynced);
}

class PatientsCompanion extends UpdateCompanion<Patient> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> age;
  final Value<String> disease;
  final Value<String> loc;
  final Value<DateTime> date;
  final Value<String> bloodGroup;
  final Value<DateTime?> dob;
  final Value<String?> contact;
  final Value<String?> emergencyContact;
  final Value<String?> address;
  final Value<bool> isSynced;
  const PatientsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.age = const Value.absent(),
    this.disease = const Value.absent(),
    this.loc = const Value.absent(),
    this.date = const Value.absent(),
    this.bloodGroup = const Value.absent(),
    this.dob = const Value.absent(),
    this.contact = const Value.absent(),
    this.emergencyContact = const Value.absent(),
    this.address = const Value.absent(),
    this.isSynced = const Value.absent(),
  });
  PatientsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String age,
    required String disease,
    required String loc,
    required DateTime date,
    required String bloodGroup,
    this.dob = const Value.absent(),
    this.contact = const Value.absent(),
    this.emergencyContact = const Value.absent(),
    this.address = const Value.absent(),
    this.isSynced = const Value.absent(),
  })  : name = Value(name),
        age = Value(age),
        disease = Value(disease),
        loc = Value(loc),
        date = Value(date),
        bloodGroup = Value(bloodGroup);
  static Insertable<Patient> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? age,
    Expression<String>? disease,
    Expression<String>? loc,
    Expression<DateTime>? date,
    Expression<String>? bloodGroup,
    Expression<DateTime>? dob,
    Expression<String>? contact,
    Expression<String>? emergencyContact,
    Expression<String>? address,
    Expression<bool>? isSynced,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (age != null) 'age': age,
      if (disease != null) 'disease': disease,
      if (loc != null) 'loc': loc,
      if (date != null) 'date': date,
      if (bloodGroup != null) 'blood_group': bloodGroup,
      if (dob != null) 'dob': dob,
      if (contact != null) 'contact': contact,
      if (emergencyContact != null) 'emergency_contact': emergencyContact,
      if (address != null) 'address': address,
      if (isSynced != null) 'is_synced': isSynced,
    });
  }

  PatientsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? age,
      Value<String>? disease,
      Value<String>? loc,
      Value<DateTime>? date,
      Value<String>? bloodGroup,
      Value<DateTime?>? dob,
      Value<String?>? contact,
      Value<String?>? emergencyContact,
      Value<String?>? address,
      Value<bool>? isSynced}) {
    return PatientsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      disease: disease ?? this.disease,
      loc: loc ?? this.loc,
      date: date ?? this.date,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      dob: dob ?? this.dob,
      contact: contact ?? this.contact,
      emergencyContact: emergencyContact ?? this.emergencyContact,
      address: address ?? this.address,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (age.present) {
      map['age'] = Variable<String>(age.value);
    }
    if (disease.present) {
      map['disease'] = Variable<String>(disease.value);
    }
    if (loc.present) {
      map['loc'] = Variable<String>(loc.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (bloodGroup.present) {
      map['blood_group'] = Variable<String>(bloodGroup.value);
    }
    if (dob.present) {
      map['dob'] = Variable<DateTime>(dob.value);
    }
    if (contact.present) {
      map['contact'] = Variable<String>(contact.value);
    }
    if (emergencyContact.present) {
      map['emergency_contact'] = Variable<String>(emergencyContact.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PatientsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('disease: $disease, ')
          ..write('loc: $loc, ')
          ..write('date: $date, ')
          ..write('bloodGroup: $bloodGroup, ')
          ..write('dob: $dob, ')
          ..write('contact: $contact, ')
          ..write('emergencyContact: $emergencyContact, ')
          ..write('address: $address, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }
}

class $DiaryEntriesTable extends DiaryEntries
    with TableInfo<$DiaryEntriesTable, DiaryEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DiaryEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _patientIdMeta =
      const VerificationMeta('patientId');
  @override
  late final GeneratedColumn<int> patientId = GeneratedColumn<int>(
      'patient_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES patients (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  @override
  late final GeneratedColumn<String> duration = GeneratedColumn<String>(
      'duration', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _transcriptMeta =
      const VerificationMeta('transcript');
  @override
  late final GeneratedColumn<String> transcript = GeneratedColumn<String>(
      'transcript', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isSyncedMeta =
      const VerificationMeta('isSynced');
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
      'is_synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, patientId, date, duration, transcript, isSynced];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'diary_entries';
  @override
  VerificationContext validateIntegrity(Insertable<DiaryEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('patient_id')) {
      context.handle(_patientIdMeta,
          patientId.isAcceptableOrUnknown(data['patient_id']!, _patientIdMeta));
    } else if (isInserting) {
      context.missing(_patientIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    } else if (isInserting) {
      context.missing(_durationMeta);
    }
    if (data.containsKey('transcript')) {
      context.handle(
          _transcriptMeta,
          transcript.isAcceptableOrUnknown(
              data['transcript']!, _transcriptMeta));
    } else if (isInserting) {
      context.missing(_transcriptMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DiaryEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DiaryEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      patientId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}patient_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      duration: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}duration'])!,
      transcript: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}transcript'])!,
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
    );
  }

  @override
  $DiaryEntriesTable createAlias(String alias) {
    return $DiaryEntriesTable(attachedDatabase, alias);
  }
}

class DiaryEntry extends DataClass implements Insertable<DiaryEntry> {
  final int id;
  final int patientId;
  final DateTime date;
  final String duration;
  final String transcript;
  final bool isSynced;
  const DiaryEntry(
      {required this.id,
      required this.patientId,
      required this.date,
      required this.duration,
      required this.transcript,
      required this.isSynced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['patient_id'] = Variable<int>(patientId);
    map['date'] = Variable<DateTime>(date);
    map['duration'] = Variable<String>(duration);
    map['transcript'] = Variable<String>(transcript);
    map['is_synced'] = Variable<bool>(isSynced);
    return map;
  }

  DiaryEntriesCompanion toCompanion(bool nullToAbsent) {
    return DiaryEntriesCompanion(
      id: Value(id),
      patientId: Value(patientId),
      date: Value(date),
      duration: Value(duration),
      transcript: Value(transcript),
      isSynced: Value(isSynced),
    );
  }

  factory DiaryEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiaryEntry(
      id: serializer.fromJson<int>(json['id']),
      patientId: serializer.fromJson<int>(json['patientId']),
      date: serializer.fromJson<DateTime>(json['date']),
      duration: serializer.fromJson<String>(json['duration']),
      transcript: serializer.fromJson<String>(json['transcript']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'patientId': serializer.toJson<int>(patientId),
      'date': serializer.toJson<DateTime>(date),
      'duration': serializer.toJson<String>(duration),
      'transcript': serializer.toJson<String>(transcript),
      'isSynced': serializer.toJson<bool>(isSynced),
    };
  }

  DiaryEntry copyWith(
          {int? id,
          int? patientId,
          DateTime? date,
          String? duration,
          String? transcript,
          bool? isSynced}) =>
      DiaryEntry(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        date: date ?? this.date,
        duration: duration ?? this.duration,
        transcript: transcript ?? this.transcript,
        isSynced: isSynced ?? this.isSynced,
      );
  @override
  String toString() {
    return (StringBuffer('DiaryEntry(')
          ..write('id: $id, ')
          ..write('patientId: $patientId, ')
          ..write('date: $date, ')
          ..write('duration: $duration, ')
          ..write('transcript: $transcript, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, patientId, date, duration, transcript, isSynced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiaryEntry &&
          other.id == this.id &&
          other.patientId == this.patientId &&
          other.date == this.date &&
          other.duration == this.duration &&
          other.transcript == this.transcript &&
          other.isSynced == this.isSynced);
}

class DiaryEntriesCompanion extends UpdateCompanion<DiaryEntry> {
  final Value<int> id;
  final Value<int> patientId;
  final Value<DateTime> date;
  final Value<String> duration;
  final Value<String> transcript;
  final Value<bool> isSynced;
  const DiaryEntriesCompanion({
    this.id = const Value.absent(),
    this.patientId = const Value.absent(),
    this.date = const Value.absent(),
    this.duration = const Value.absent(),
    this.transcript = const Value.absent(),
    this.isSynced = const Value.absent(),
  });
  DiaryEntriesCompanion.insert({
    this.id = const Value.absent(),
    required int patientId,
    required DateTime date,
    required String duration,
    required String transcript,
    this.isSynced = const Value.absent(),
  })  : patientId = Value(patientId),
        date = Value(date),
        duration = Value(duration),
        transcript = Value(transcript);
  static Insertable<DiaryEntry> custom({
    Expression<int>? id,
    Expression<int>? patientId,
    Expression<DateTime>? date,
    Expression<String>? duration,
    Expression<String>? transcript,
    Expression<bool>? isSynced,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (patientId != null) 'patient_id': patientId,
      if (date != null) 'date': date,
      if (duration != null) 'duration': duration,
      if (transcript != null) 'transcript': transcript,
      if (isSynced != null) 'is_synced': isSynced,
    });
  }

  DiaryEntriesCompanion copyWith(
      {Value<int>? id,
      Value<int>? patientId,
      Value<DateTime>? date,
      Value<String>? duration,
      Value<String>? transcript,
      Value<bool>? isSynced}) {
    return DiaryEntriesCompanion(
      id: id ?? this.id,
      patientId: patientId ?? this.patientId,
      date: date ?? this.date,
      duration: duration ?? this.duration,
      transcript: transcript ?? this.transcript,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (patientId.present) {
      map['patient_id'] = Variable<int>(patientId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (duration.present) {
      map['duration'] = Variable<String>(duration.value);
    }
    if (transcript.present) {
      map['transcript'] = Variable<String>(transcript.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiaryEntriesCompanion(')
          ..write('id: $id, ')
          ..write('patientId: $patientId, ')
          ..write('date: $date, ')
          ..write('duration: $duration, ')
          ..write('transcript: $transcript, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $PatientsTable patients = $PatientsTable(this);
  late final $DiaryEntriesTable diaryEntries = $DiaryEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [patients, diaryEntries];
}
