// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $WorkersTable extends Workers with TableInfo<$WorkersTable, Worker> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkersTable(this.attachedDatabase, [this._alias]);
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
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _blockMeta = const VerificationMeta('block');
  @override
  late final GeneratedColumn<String> block = GeneratedColumn<String>(
      'block', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firebaseUidMeta =
      const VerificationMeta('firebaseUid');
  @override
  late final GeneratedColumn<String> firebaseUid = GeneratedColumn<String>(
      'firebase_uid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, phone, block, firebaseUid, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workers';
  @override
  VerificationContext validateIntegrity(Insertable<Worker> instance,
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
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('block')) {
      context.handle(
          _blockMeta, block.isAcceptableOrUnknown(data['block']!, _blockMeta));
    } else if (isInserting) {
      context.missing(_blockMeta);
    }
    if (data.containsKey('firebase_uid')) {
      context.handle(
          _firebaseUidMeta,
          firebaseUid.isAcceptableOrUnknown(
              data['firebase_uid']!, _firebaseUidMeta));
    } else if (isInserting) {
      context.missing(_firebaseUidMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Worker map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Worker(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      block: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}block'])!,
      firebaseUid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firebase_uid'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $WorkersTable createAlias(String alias) {
    return $WorkersTable(attachedDatabase, alias);
  }
}

class Worker extends DataClass implements Insertable<Worker> {
  final int id;
  final String name;
  final String phone;
  final String block;
  final String firebaseUid;
  final DateTime createdAt;
  const Worker(
      {required this.id,
      required this.name,
      required this.phone,
      required this.block,
      required this.firebaseUid,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['phone'] = Variable<String>(phone);
    map['block'] = Variable<String>(block);
    map['firebase_uid'] = Variable<String>(firebaseUid);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  WorkersCompanion toCompanion(bool nullToAbsent) {
    return WorkersCompanion(
      id: Value(id),
      name: Value(name),
      phone: Value(phone),
      block: Value(block),
      firebaseUid: Value(firebaseUid),
      createdAt: Value(createdAt),
    );
  }

  factory Worker.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Worker(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String>(json['phone']),
      block: serializer.fromJson<String>(json['block']),
      firebaseUid: serializer.fromJson<String>(json['firebaseUid']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String>(phone),
      'block': serializer.toJson<String>(block),
      'firebaseUid': serializer.toJson<String>(firebaseUid),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Worker copyWith(
          {int? id,
          String? name,
          String? phone,
          String? block,
          String? firebaseUid,
          DateTime? createdAt}) =>
      Worker(
        id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        block: block ?? this.block,
        firebaseUid: firebaseUid ?? this.firebaseUid,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('Worker(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('block: $block, ')
          ..write('firebaseUid: $firebaseUid, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, phone, block, firebaseUid, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Worker &&
          other.id == this.id &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.block == this.block &&
          other.firebaseUid == this.firebaseUid &&
          other.createdAt == this.createdAt);
}

class WorkersCompanion extends UpdateCompanion<Worker> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> phone;
  final Value<String> block;
  final Value<String> firebaseUid;
  final Value<DateTime> createdAt;
  const WorkersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.block = const Value.absent(),
    this.firebaseUid = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  WorkersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String phone,
    required String block,
    required String firebaseUid,
    this.createdAt = const Value.absent(),
  })  : name = Value(name),
        phone = Value(phone),
        block = Value(block),
        firebaseUid = Value(firebaseUid);
  static Insertable<Worker> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? phone,
    Expression<String>? block,
    Expression<String>? firebaseUid,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (block != null) 'block': block,
      if (firebaseUid != null) 'firebase_uid': firebaseUid,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  WorkersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? phone,
      Value<String>? block,
      Value<String>? firebaseUid,
      Value<DateTime>? createdAt}) {
    return WorkersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      block: block ?? this.block,
      firebaseUid: firebaseUid ?? this.firebaseUid,
      createdAt: createdAt ?? this.createdAt,
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
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (block.present) {
      map['block'] = Variable<String>(block.value);
    }
    if (firebaseUid.present) {
      map['firebase_uid'] = Variable<String>(firebaseUid.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('block: $block, ')
          ..write('firebaseUid: $firebaseUid, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

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
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
      'age', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _workerUidMeta =
      const VerificationMeta('workerUid');
  @override
  late final GeneratedColumn<String> workerUid = GeneratedColumn<String>(
      'worker_uid', aliasedName, false,
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
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        age,
        gender,
        phone,
        address,
        workerUid,
        isSynced,
        createdAt,
        updatedAt
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
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('worker_uid')) {
      context.handle(_workerUidMeta,
          workerUid.isAcceptableOrUnknown(data['worker_uid']!, _workerUidMeta));
    } else if (isInserting) {
      context.missing(_workerUidMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
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
          .read(DriftSqlType.int, data['${effectivePrefix}age'])!,
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      workerUid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}worker_uid'])!,
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
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
  final int age;
  final String gender;
  final String? phone;
  final String address;
  final String workerUid;
  final bool isSynced;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Patient(
      {required this.id,
      required this.name,
      required this.age,
      required this.gender,
      this.phone,
      required this.address,
      required this.workerUid,
      required this.isSynced,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['age'] = Variable<int>(age);
    map['gender'] = Variable<String>(gender);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    map['address'] = Variable<String>(address);
    map['worker_uid'] = Variable<String>(workerUid);
    map['is_synced'] = Variable<bool>(isSynced);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PatientsCompanion toCompanion(bool nullToAbsent) {
    return PatientsCompanion(
      id: Value(id),
      name: Value(name),
      age: Value(age),
      gender: Value(gender),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      address: Value(address),
      workerUid: Value(workerUid),
      isSynced: Value(isSynced),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Patient.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Patient(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      age: serializer.fromJson<int>(json['age']),
      gender: serializer.fromJson<String>(json['gender']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String>(json['address']),
      workerUid: serializer.fromJson<String>(json['workerUid']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'age': serializer.toJson<int>(age),
      'gender': serializer.toJson<String>(gender),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String>(address),
      'workerUid': serializer.toJson<String>(workerUid),
      'isSynced': serializer.toJson<bool>(isSynced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Patient copyWith(
          {int? id,
          String? name,
          int? age,
          String? gender,
          Value<String?> phone = const Value.absent(),
          String? address,
          String? workerUid,
          bool? isSynced,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Patient(
        id: id ?? this.id,
        name: name ?? this.name,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        phone: phone.present ? phone.value : this.phone,
        address: address ?? this.address,
        workerUid: workerUid ?? this.workerUid,
        isSynced: isSynced ?? this.isSynced,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Patient(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('gender: $gender, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('workerUid: $workerUid, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, age, gender, phone, address,
      workerUid, isSynced, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Patient &&
          other.id == this.id &&
          other.name == this.name &&
          other.age == this.age &&
          other.gender == this.gender &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.workerUid == this.workerUid &&
          other.isSynced == this.isSynced &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PatientsCompanion extends UpdateCompanion<Patient> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> age;
  final Value<String> gender;
  final Value<String?> phone;
  final Value<String> address;
  final Value<String> workerUid;
  final Value<bool> isSynced;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PatientsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.age = const Value.absent(),
    this.gender = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.workerUid = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PatientsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int age,
    required String gender,
    this.phone = const Value.absent(),
    required String address,
    required String workerUid,
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : name = Value(name),
        age = Value(age),
        gender = Value(gender),
        address = Value(address),
        workerUid = Value(workerUid);
  static Insertable<Patient> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? age,
    Expression<String>? gender,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<String>? workerUid,
    Expression<bool>? isSynced,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (workerUid != null) 'worker_uid': workerUid,
      if (isSynced != null) 'is_synced': isSynced,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PatientsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? age,
      Value<String>? gender,
      Value<String?>? phone,
      Value<String>? address,
      Value<String>? workerUid,
      Value<bool>? isSynced,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return PatientsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      workerUid: workerUid ?? this.workerUid,
      isSynced: isSynced ?? this.isSynced,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
      map['age'] = Variable<int>(age.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (workerUid.present) {
      map['worker_uid'] = Variable<String>(workerUid.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PatientsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('gender: $gender, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('workerUid: $workerUid, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $VisitsTable extends Visits with TableInfo<$VisitsTable, Visit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VisitsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symptomsMeta =
      const VerificationMeta('symptoms');
  @override
  late final GeneratedColumn<String> symptoms = GeneratedColumn<String>(
      'symptoms', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _triageLevelMeta =
      const VerificationMeta('triageLevel');
  @override
  late final GeneratedColumn<String> triageLevel = GeneratedColumn<String>(
      'triage_level', aliasedName, false,
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
  static const VerificationMeta _visitDateMeta =
      const VerificationMeta('visitDate');
  @override
  late final GeneratedColumn<DateTime> visitDate = GeneratedColumn<DateTime>(
      'visit_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, patientId, notes, symptoms, triageLevel, isSynced, visitDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'visits';
  @override
  VerificationContext validateIntegrity(Insertable<Visit> instance,
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
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    } else if (isInserting) {
      context.missing(_notesMeta);
    }
    if (data.containsKey('symptoms')) {
      context.handle(_symptomsMeta,
          symptoms.isAcceptableOrUnknown(data['symptoms']!, _symptomsMeta));
    } else if (isInserting) {
      context.missing(_symptomsMeta);
    }
    if (data.containsKey('triage_level')) {
      context.handle(
          _triageLevelMeta,
          triageLevel.isAcceptableOrUnknown(
              data['triage_level']!, _triageLevelMeta));
    } else if (isInserting) {
      context.missing(_triageLevelMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    if (data.containsKey('visit_date')) {
      context.handle(_visitDateMeta,
          visitDate.isAcceptableOrUnknown(data['visit_date']!, _visitDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Visit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Visit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      patientId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}patient_id'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes'])!,
      symptoms: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symptoms'])!,
      triageLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}triage_level'])!,
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
      visitDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}visit_date'])!,
    );
  }

  @override
  $VisitsTable createAlias(String alias) {
    return $VisitsTable(attachedDatabase, alias);
  }
}

class Visit extends DataClass implements Insertable<Visit> {
  final int id;
  final int patientId;
  final String notes;
  final String symptoms;
  final String triageLevel;
  final bool isSynced;
  final DateTime visitDate;
  const Visit(
      {required this.id,
      required this.patientId,
      required this.notes,
      required this.symptoms,
      required this.triageLevel,
      required this.isSynced,
      required this.visitDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['patient_id'] = Variable<int>(patientId);
    map['notes'] = Variable<String>(notes);
    map['symptoms'] = Variable<String>(symptoms);
    map['triage_level'] = Variable<String>(triageLevel);
    map['is_synced'] = Variable<bool>(isSynced);
    map['visit_date'] = Variable<DateTime>(visitDate);
    return map;
  }

  VisitsCompanion toCompanion(bool nullToAbsent) {
    return VisitsCompanion(
      id: Value(id),
      patientId: Value(patientId),
      notes: Value(notes),
      symptoms: Value(symptoms),
      triageLevel: Value(triageLevel),
      isSynced: Value(isSynced),
      visitDate: Value(visitDate),
    );
  }

  factory Visit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Visit(
      id: serializer.fromJson<int>(json['id']),
      patientId: serializer.fromJson<int>(json['patientId']),
      notes: serializer.fromJson<String>(json['notes']),
      symptoms: serializer.fromJson<String>(json['symptoms']),
      triageLevel: serializer.fromJson<String>(json['triageLevel']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      visitDate: serializer.fromJson<DateTime>(json['visitDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'patientId': serializer.toJson<int>(patientId),
      'notes': serializer.toJson<String>(notes),
      'symptoms': serializer.toJson<String>(symptoms),
      'triageLevel': serializer.toJson<String>(triageLevel),
      'isSynced': serializer.toJson<bool>(isSynced),
      'visitDate': serializer.toJson<DateTime>(visitDate),
    };
  }

  Visit copyWith(
          {int? id,
          int? patientId,
          String? notes,
          String? symptoms,
          String? triageLevel,
          bool? isSynced,
          DateTime? visitDate}) =>
      Visit(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        notes: notes ?? this.notes,
        symptoms: symptoms ?? this.symptoms,
        triageLevel: triageLevel ?? this.triageLevel,
        isSynced: isSynced ?? this.isSynced,
        visitDate: visitDate ?? this.visitDate,
      );
  @override
  String toString() {
    return (StringBuffer('Visit(')
          ..write('id: $id, ')
          ..write('patientId: $patientId, ')
          ..write('notes: $notes, ')
          ..write('symptoms: $symptoms, ')
          ..write('triageLevel: $triageLevel, ')
          ..write('isSynced: $isSynced, ')
          ..write('visitDate: $visitDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, patientId, notes, symptoms, triageLevel, isSynced, visitDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Visit &&
          other.id == this.id &&
          other.patientId == this.patientId &&
          other.notes == this.notes &&
          other.symptoms == this.symptoms &&
          other.triageLevel == this.triageLevel &&
          other.isSynced == this.isSynced &&
          other.visitDate == this.visitDate);
}

class VisitsCompanion extends UpdateCompanion<Visit> {
  final Value<int> id;
  final Value<int> patientId;
  final Value<String> notes;
  final Value<String> symptoms;
  final Value<String> triageLevel;
  final Value<bool> isSynced;
  final Value<DateTime> visitDate;
  const VisitsCompanion({
    this.id = const Value.absent(),
    this.patientId = const Value.absent(),
    this.notes = const Value.absent(),
    this.symptoms = const Value.absent(),
    this.triageLevel = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.visitDate = const Value.absent(),
  });
  VisitsCompanion.insert({
    this.id = const Value.absent(),
    required int patientId,
    required String notes,
    required String symptoms,
    required String triageLevel,
    this.isSynced = const Value.absent(),
    this.visitDate = const Value.absent(),
  })  : patientId = Value(patientId),
        notes = Value(notes),
        symptoms = Value(symptoms),
        triageLevel = Value(triageLevel);
  static Insertable<Visit> custom({
    Expression<int>? id,
    Expression<int>? patientId,
    Expression<String>? notes,
    Expression<String>? symptoms,
    Expression<String>? triageLevel,
    Expression<bool>? isSynced,
    Expression<DateTime>? visitDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (patientId != null) 'patient_id': patientId,
      if (notes != null) 'notes': notes,
      if (symptoms != null) 'symptoms': symptoms,
      if (triageLevel != null) 'triage_level': triageLevel,
      if (isSynced != null) 'is_synced': isSynced,
      if (visitDate != null) 'visit_date': visitDate,
    });
  }

  VisitsCompanion copyWith(
      {Value<int>? id,
      Value<int>? patientId,
      Value<String>? notes,
      Value<String>? symptoms,
      Value<String>? triageLevel,
      Value<bool>? isSynced,
      Value<DateTime>? visitDate}) {
    return VisitsCompanion(
      id: id ?? this.id,
      patientId: patientId ?? this.patientId,
      notes: notes ?? this.notes,
      symptoms: symptoms ?? this.symptoms,
      triageLevel: triageLevel ?? this.triageLevel,
      isSynced: isSynced ?? this.isSynced,
      visitDate: visitDate ?? this.visitDate,
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
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (symptoms.present) {
      map['symptoms'] = Variable<String>(symptoms.value);
    }
    if (triageLevel.present) {
      map['triage_level'] = Variable<String>(triageLevel.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (visitDate.present) {
      map['visit_date'] = Variable<DateTime>(visitDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VisitsCompanion(')
          ..write('id: $id, ')
          ..write('patientId: $patientId, ')
          ..write('notes: $notes, ')
          ..write('symptoms: $symptoms, ')
          ..write('triageLevel: $triageLevel, ')
          ..write('isSynced: $isSynced, ')
          ..write('visitDate: $visitDate')
          ..write(')'))
        .toString();
  }
}

class $SymptomSessionsTable extends SymptomSessions
    with TableInfo<$SymptomSessionsTable, SymptomSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SymptomSessionsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _workerUidMeta =
      const VerificationMeta('workerUid');
  @override
  late final GeneratedColumn<String> workerUid = GeneratedColumn<String>(
      'worker_uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symptomsMeta =
      const VerificationMeta('symptoms');
  @override
  late final GeneratedColumn<String> symptoms = GeneratedColumn<String>(
      'symptoms', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _severityMeta =
      const VerificationMeta('severity');
  @override
  late final GeneratedColumn<String> severity = GeneratedColumn<String>(
      'severity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _durationDaysMeta =
      const VerificationMeta('durationDays');
  @override
  late final GeneratedColumn<int> durationDays = GeneratedColumn<int>(
      'duration_days', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _aiAnalysisMeta =
      const VerificationMeta('aiAnalysis');
  @override
  late final GeneratedColumn<String> aiAnalysis = GeneratedColumn<String>(
      'ai_analysis', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _triageLevelMeta =
      const VerificationMeta('triageLevel');
  @override
  late final GeneratedColumn<String> triageLevel = GeneratedColumn<String>(
      'triage_level', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _referralNoteMeta =
      const VerificationMeta('referralNote');
  @override
  late final GeneratedColumn<String> referralNote = GeneratedColumn<String>(
      'referral_note', aliasedName, true,
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
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        patientId,
        workerUid,
        symptoms,
        severity,
        durationDays,
        aiAnalysis,
        triageLevel,
        referralNote,
        isSynced,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'symptom_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<SymptomSession> instance,
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
    if (data.containsKey('worker_uid')) {
      context.handle(_workerUidMeta,
          workerUid.isAcceptableOrUnknown(data['worker_uid']!, _workerUidMeta));
    } else if (isInserting) {
      context.missing(_workerUidMeta);
    }
    if (data.containsKey('symptoms')) {
      context.handle(_symptomsMeta,
          symptoms.isAcceptableOrUnknown(data['symptoms']!, _symptomsMeta));
    } else if (isInserting) {
      context.missing(_symptomsMeta);
    }
    if (data.containsKey('severity')) {
      context.handle(_severityMeta,
          severity.isAcceptableOrUnknown(data['severity']!, _severityMeta));
    } else if (isInserting) {
      context.missing(_severityMeta);
    }
    if (data.containsKey('duration_days')) {
      context.handle(
          _durationDaysMeta,
          durationDays.isAcceptableOrUnknown(
              data['duration_days']!, _durationDaysMeta));
    } else if (isInserting) {
      context.missing(_durationDaysMeta);
    }
    if (data.containsKey('ai_analysis')) {
      context.handle(
          _aiAnalysisMeta,
          aiAnalysis.isAcceptableOrUnknown(
              data['ai_analysis']!, _aiAnalysisMeta));
    }
    if (data.containsKey('triage_level')) {
      context.handle(
          _triageLevelMeta,
          triageLevel.isAcceptableOrUnknown(
              data['triage_level']!, _triageLevelMeta));
    } else if (isInserting) {
      context.missing(_triageLevelMeta);
    }
    if (data.containsKey('referral_note')) {
      context.handle(
          _referralNoteMeta,
          referralNote.isAcceptableOrUnknown(
              data['referral_note']!, _referralNoteMeta));
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SymptomSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SymptomSession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      patientId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}patient_id'])!,
      workerUid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}worker_uid'])!,
      symptoms: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symptoms'])!,
      severity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}severity'])!,
      durationDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_days'])!,
      aiAnalysis: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ai_analysis']),
      triageLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}triage_level'])!,
      referralNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}referral_note']),
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SymptomSessionsTable createAlias(String alias) {
    return $SymptomSessionsTable(attachedDatabase, alias);
  }
}

class SymptomSession extends DataClass implements Insertable<SymptomSession> {
  final int id;
  final int patientId;
  final String workerUid;
  final String symptoms;
  final String severity;
  final int durationDays;
  final String? aiAnalysis;
  final String triageLevel;
  final String? referralNote;
  final bool isSynced;
  final DateTime createdAt;
  const SymptomSession(
      {required this.id,
      required this.patientId,
      required this.workerUid,
      required this.symptoms,
      required this.severity,
      required this.durationDays,
      this.aiAnalysis,
      required this.triageLevel,
      this.referralNote,
      required this.isSynced,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['patient_id'] = Variable<int>(patientId);
    map['worker_uid'] = Variable<String>(workerUid);
    map['symptoms'] = Variable<String>(symptoms);
    map['severity'] = Variable<String>(severity);
    map['duration_days'] = Variable<int>(durationDays);
    if (!nullToAbsent || aiAnalysis != null) {
      map['ai_analysis'] = Variable<String>(aiAnalysis);
    }
    map['triage_level'] = Variable<String>(triageLevel);
    if (!nullToAbsent || referralNote != null) {
      map['referral_note'] = Variable<String>(referralNote);
    }
    map['is_synced'] = Variable<bool>(isSynced);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SymptomSessionsCompanion toCompanion(bool nullToAbsent) {
    return SymptomSessionsCompanion(
      id: Value(id),
      patientId: Value(patientId),
      workerUid: Value(workerUid),
      symptoms: Value(symptoms),
      severity: Value(severity),
      durationDays: Value(durationDays),
      aiAnalysis: aiAnalysis == null && nullToAbsent
          ? const Value.absent()
          : Value(aiAnalysis),
      triageLevel: Value(triageLevel),
      referralNote: referralNote == null && nullToAbsent
          ? const Value.absent()
          : Value(referralNote),
      isSynced: Value(isSynced),
      createdAt: Value(createdAt),
    );
  }

  factory SymptomSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SymptomSession(
      id: serializer.fromJson<int>(json['id']),
      patientId: serializer.fromJson<int>(json['patientId']),
      workerUid: serializer.fromJson<String>(json['workerUid']),
      symptoms: serializer.fromJson<String>(json['symptoms']),
      severity: serializer.fromJson<String>(json['severity']),
      durationDays: serializer.fromJson<int>(json['durationDays']),
      aiAnalysis: serializer.fromJson<String?>(json['aiAnalysis']),
      triageLevel: serializer.fromJson<String>(json['triageLevel']),
      referralNote: serializer.fromJson<String?>(json['referralNote']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'patientId': serializer.toJson<int>(patientId),
      'workerUid': serializer.toJson<String>(workerUid),
      'symptoms': serializer.toJson<String>(symptoms),
      'severity': serializer.toJson<String>(severity),
      'durationDays': serializer.toJson<int>(durationDays),
      'aiAnalysis': serializer.toJson<String?>(aiAnalysis),
      'triageLevel': serializer.toJson<String>(triageLevel),
      'referralNote': serializer.toJson<String?>(referralNote),
      'isSynced': serializer.toJson<bool>(isSynced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  SymptomSession copyWith(
          {int? id,
          int? patientId,
          String? workerUid,
          String? symptoms,
          String? severity,
          int? durationDays,
          Value<String?> aiAnalysis = const Value.absent(),
          String? triageLevel,
          Value<String?> referralNote = const Value.absent(),
          bool? isSynced,
          DateTime? createdAt}) =>
      SymptomSession(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        workerUid: workerUid ?? this.workerUid,
        symptoms: symptoms ?? this.symptoms,
        severity: severity ?? this.severity,
        durationDays: durationDays ?? this.durationDays,
        aiAnalysis: aiAnalysis.present ? aiAnalysis.value : this.aiAnalysis,
        triageLevel: triageLevel ?? this.triageLevel,
        referralNote:
            referralNote.present ? referralNote.value : this.referralNote,
        isSynced: isSynced ?? this.isSynced,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('SymptomSession(')
          ..write('id: $id, ')
          ..write('patientId: $patientId, ')
          ..write('workerUid: $workerUid, ')
          ..write('symptoms: $symptoms, ')
          ..write('severity: $severity, ')
          ..write('durationDays: $durationDays, ')
          ..write('aiAnalysis: $aiAnalysis, ')
          ..write('triageLevel: $triageLevel, ')
          ..write('referralNote: $referralNote, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, patientId, workerUid, symptoms, severity,
      durationDays, aiAnalysis, triageLevel, referralNote, isSynced, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SymptomSession &&
          other.id == this.id &&
          other.patientId == this.patientId &&
          other.workerUid == this.workerUid &&
          other.symptoms == this.symptoms &&
          other.severity == this.severity &&
          other.durationDays == this.durationDays &&
          other.aiAnalysis == this.aiAnalysis &&
          other.triageLevel == this.triageLevel &&
          other.referralNote == this.referralNote &&
          other.isSynced == this.isSynced &&
          other.createdAt == this.createdAt);
}

class SymptomSessionsCompanion extends UpdateCompanion<SymptomSession> {
  final Value<int> id;
  final Value<int> patientId;
  final Value<String> workerUid;
  final Value<String> symptoms;
  final Value<String> severity;
  final Value<int> durationDays;
  final Value<String?> aiAnalysis;
  final Value<String> triageLevel;
  final Value<String?> referralNote;
  final Value<bool> isSynced;
  final Value<DateTime> createdAt;
  const SymptomSessionsCompanion({
    this.id = const Value.absent(),
    this.patientId = const Value.absent(),
    this.workerUid = const Value.absent(),
    this.symptoms = const Value.absent(),
    this.severity = const Value.absent(),
    this.durationDays = const Value.absent(),
    this.aiAnalysis = const Value.absent(),
    this.triageLevel = const Value.absent(),
    this.referralNote = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  SymptomSessionsCompanion.insert({
    this.id = const Value.absent(),
    required int patientId,
    required String workerUid,
    required String symptoms,
    required String severity,
    required int durationDays,
    this.aiAnalysis = const Value.absent(),
    required String triageLevel,
    this.referralNote = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : patientId = Value(patientId),
        workerUid = Value(workerUid),
        symptoms = Value(symptoms),
        severity = Value(severity),
        durationDays = Value(durationDays),
        triageLevel = Value(triageLevel);
  static Insertable<SymptomSession> custom({
    Expression<int>? id,
    Expression<int>? patientId,
    Expression<String>? workerUid,
    Expression<String>? symptoms,
    Expression<String>? severity,
    Expression<int>? durationDays,
    Expression<String>? aiAnalysis,
    Expression<String>? triageLevel,
    Expression<String>? referralNote,
    Expression<bool>? isSynced,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (patientId != null) 'patient_id': patientId,
      if (workerUid != null) 'worker_uid': workerUid,
      if (symptoms != null) 'symptoms': symptoms,
      if (severity != null) 'severity': severity,
      if (durationDays != null) 'duration_days': durationDays,
      if (aiAnalysis != null) 'ai_analysis': aiAnalysis,
      if (triageLevel != null) 'triage_level': triageLevel,
      if (referralNote != null) 'referral_note': referralNote,
      if (isSynced != null) 'is_synced': isSynced,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SymptomSessionsCompanion copyWith(
      {Value<int>? id,
      Value<int>? patientId,
      Value<String>? workerUid,
      Value<String>? symptoms,
      Value<String>? severity,
      Value<int>? durationDays,
      Value<String?>? aiAnalysis,
      Value<String>? triageLevel,
      Value<String?>? referralNote,
      Value<bool>? isSynced,
      Value<DateTime>? createdAt}) {
    return SymptomSessionsCompanion(
      id: id ?? this.id,
      patientId: patientId ?? this.patientId,
      workerUid: workerUid ?? this.workerUid,
      symptoms: symptoms ?? this.symptoms,
      severity: severity ?? this.severity,
      durationDays: durationDays ?? this.durationDays,
      aiAnalysis: aiAnalysis ?? this.aiAnalysis,
      triageLevel: triageLevel ?? this.triageLevel,
      referralNote: referralNote ?? this.referralNote,
      isSynced: isSynced ?? this.isSynced,
      createdAt: createdAt ?? this.createdAt,
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
    if (workerUid.present) {
      map['worker_uid'] = Variable<String>(workerUid.value);
    }
    if (symptoms.present) {
      map['symptoms'] = Variable<String>(symptoms.value);
    }
    if (severity.present) {
      map['severity'] = Variable<String>(severity.value);
    }
    if (durationDays.present) {
      map['duration_days'] = Variable<int>(durationDays.value);
    }
    if (aiAnalysis.present) {
      map['ai_analysis'] = Variable<String>(aiAnalysis.value);
    }
    if (triageLevel.present) {
      map['triage_level'] = Variable<String>(triageLevel.value);
    }
    if (referralNote.present) {
      map['referral_note'] = Variable<String>(referralNote.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SymptomSessionsCompanion(')
          ..write('id: $id, ')
          ..write('patientId: $patientId, ')
          ..write('workerUid: $workerUid, ')
          ..write('symptoms: $symptoms, ')
          ..write('severity: $severity, ')
          ..write('durationDays: $durationDays, ')
          ..write('aiAnalysis: $aiAnalysis, ')
          ..write('triageLevel: $triageLevel, ')
          ..write('referralNote: $referralNote, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
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
  static const VerificationMeta _workerUidMeta =
      const VerificationMeta('workerUid');
  @override
  late final GeneratedColumn<String> workerUid = GeneratedColumn<String>(
      'worker_uid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _audioPathMeta =
      const VerificationMeta('audioPath');
  @override
  late final GeneratedColumn<String> audioPath = GeneratedColumn<String>(
      'audio_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _transcriptMeta =
      const VerificationMeta('transcript');
  @override
  late final GeneratedColumn<String> transcript = GeneratedColumn<String>(
      'transcript', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _aiSummaryMeta =
      const VerificationMeta('aiSummary');
  @override
  late final GeneratedColumn<String> aiSummary = GeneratedColumn<String>(
      'ai_summary', aliasedName, true,
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
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, workerUid, audioPath, transcript, aiSummary, isSynced, createdAt];
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
    if (data.containsKey('worker_uid')) {
      context.handle(_workerUidMeta,
          workerUid.isAcceptableOrUnknown(data['worker_uid']!, _workerUidMeta));
    } else if (isInserting) {
      context.missing(_workerUidMeta);
    }
    if (data.containsKey('audio_path')) {
      context.handle(_audioPathMeta,
          audioPath.isAcceptableOrUnknown(data['audio_path']!, _audioPathMeta));
    } else if (isInserting) {
      context.missing(_audioPathMeta);
    }
    if (data.containsKey('transcript')) {
      context.handle(
          _transcriptMeta,
          transcript.isAcceptableOrUnknown(
              data['transcript']!, _transcriptMeta));
    } else if (isInserting) {
      context.missing(_transcriptMeta);
    }
    if (data.containsKey('ai_summary')) {
      context.handle(_aiSummaryMeta,
          aiSummary.isAcceptableOrUnknown(data['ai_summary']!, _aiSummaryMeta));
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
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
      workerUid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}worker_uid'])!,
      audioPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}audio_path'])!,
      transcript: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}transcript'])!,
      aiSummary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ai_summary']),
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $DiaryEntriesTable createAlias(String alias) {
    return $DiaryEntriesTable(attachedDatabase, alias);
  }
}

class DiaryEntry extends DataClass implements Insertable<DiaryEntry> {
  final int id;
  final String workerUid;
  final String audioPath;
  final String transcript;
  final String? aiSummary;
  final bool isSynced;
  final DateTime createdAt;
  const DiaryEntry(
      {required this.id,
      required this.workerUid,
      required this.audioPath,
      required this.transcript,
      this.aiSummary,
      required this.isSynced,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['worker_uid'] = Variable<String>(workerUid);
    map['audio_path'] = Variable<String>(audioPath);
    map['transcript'] = Variable<String>(transcript);
    if (!nullToAbsent || aiSummary != null) {
      map['ai_summary'] = Variable<String>(aiSummary);
    }
    map['is_synced'] = Variable<bool>(isSynced);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DiaryEntriesCompanion toCompanion(bool nullToAbsent) {
    return DiaryEntriesCompanion(
      id: Value(id),
      workerUid: Value(workerUid),
      audioPath: Value(audioPath),
      transcript: Value(transcript),
      aiSummary: aiSummary == null && nullToAbsent
          ? const Value.absent()
          : Value(aiSummary),
      isSynced: Value(isSynced),
      createdAt: Value(createdAt),
    );
  }

  factory DiaryEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiaryEntry(
      id: serializer.fromJson<int>(json['id']),
      workerUid: serializer.fromJson<String>(json['workerUid']),
      audioPath: serializer.fromJson<String>(json['audioPath']),
      transcript: serializer.fromJson<String>(json['transcript']),
      aiSummary: serializer.fromJson<String?>(json['aiSummary']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'workerUid': serializer.toJson<String>(workerUid),
      'audioPath': serializer.toJson<String>(audioPath),
      'transcript': serializer.toJson<String>(transcript),
      'aiSummary': serializer.toJson<String?>(aiSummary),
      'isSynced': serializer.toJson<bool>(isSynced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DiaryEntry copyWith(
          {int? id,
          String? workerUid,
          String? audioPath,
          String? transcript,
          Value<String?> aiSummary = const Value.absent(),
          bool? isSynced,
          DateTime? createdAt}) =>
      DiaryEntry(
        id: id ?? this.id,
        workerUid: workerUid ?? this.workerUid,
        audioPath: audioPath ?? this.audioPath,
        transcript: transcript ?? this.transcript,
        aiSummary: aiSummary.present ? aiSummary.value : this.aiSummary,
        isSynced: isSynced ?? this.isSynced,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('DiaryEntry(')
          ..write('id: $id, ')
          ..write('workerUid: $workerUid, ')
          ..write('audioPath: $audioPath, ')
          ..write('transcript: $transcript, ')
          ..write('aiSummary: $aiSummary, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, workerUid, audioPath, transcript, aiSummary, isSynced, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiaryEntry &&
          other.id == this.id &&
          other.workerUid == this.workerUid &&
          other.audioPath == this.audioPath &&
          other.transcript == this.transcript &&
          other.aiSummary == this.aiSummary &&
          other.isSynced == this.isSynced &&
          other.createdAt == this.createdAt);
}

class DiaryEntriesCompanion extends UpdateCompanion<DiaryEntry> {
  final Value<int> id;
  final Value<String> workerUid;
  final Value<String> audioPath;
  final Value<String> transcript;
  final Value<String?> aiSummary;
  final Value<bool> isSynced;
  final Value<DateTime> createdAt;
  const DiaryEntriesCompanion({
    this.id = const Value.absent(),
    this.workerUid = const Value.absent(),
    this.audioPath = const Value.absent(),
    this.transcript = const Value.absent(),
    this.aiSummary = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  DiaryEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String workerUid,
    required String audioPath,
    required String transcript,
    this.aiSummary = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : workerUid = Value(workerUid),
        audioPath = Value(audioPath),
        transcript = Value(transcript);
  static Insertable<DiaryEntry> custom({
    Expression<int>? id,
    Expression<String>? workerUid,
    Expression<String>? audioPath,
    Expression<String>? transcript,
    Expression<String>? aiSummary,
    Expression<bool>? isSynced,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (workerUid != null) 'worker_uid': workerUid,
      if (audioPath != null) 'audio_path': audioPath,
      if (transcript != null) 'transcript': transcript,
      if (aiSummary != null) 'ai_summary': aiSummary,
      if (isSynced != null) 'is_synced': isSynced,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  DiaryEntriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? workerUid,
      Value<String>? audioPath,
      Value<String>? transcript,
      Value<String?>? aiSummary,
      Value<bool>? isSynced,
      Value<DateTime>? createdAt}) {
    return DiaryEntriesCompanion(
      id: id ?? this.id,
      workerUid: workerUid ?? this.workerUid,
      audioPath: audioPath ?? this.audioPath,
      transcript: transcript ?? this.transcript,
      aiSummary: aiSummary ?? this.aiSummary,
      isSynced: isSynced ?? this.isSynced,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (workerUid.present) {
      map['worker_uid'] = Variable<String>(workerUid.value);
    }
    if (audioPath.present) {
      map['audio_path'] = Variable<String>(audioPath.value);
    }
    if (transcript.present) {
      map['transcript'] = Variable<String>(transcript.value);
    }
    if (aiSummary.present) {
      map['ai_summary'] = Variable<String>(aiSummary.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiaryEntriesCompanion(')
          ..write('id: $id, ')
          ..write('workerUid: $workerUid, ')
          ..write('audioPath: $audioPath, ')
          ..write('transcript: $transcript, ')
          ..write('aiSummary: $aiSummary, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTable extends SyncQueue
    with TableInfo<$SyncQueueTable, SyncQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tableNameMeta =
      const VerificationMeta('tableName');
  @override
  late final GeneratedColumn<String> tableName = GeneratedColumn<String>(
      'table_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _operationMeta =
      const VerificationMeta('operation');
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
      'operation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payloadMeta =
      const VerificationMeta('payload');
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
      'payload', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, tableName, operation, payload, synced, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue';
  @override
  VerificationContext validateIntegrity(Insertable<SyncQueueData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('table_name')) {
      context.handle(_tableNameMeta,
          tableName.isAcceptableOrUnknown(data['table_name']!, _tableNameMeta));
    } else if (isInserting) {
      context.missing(_tableNameMeta);
    }
    if (data.containsKey('operation')) {
      context.handle(_operationMeta,
          operation.isAcceptableOrUnknown(data['operation']!, _operationMeta));
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(_payloadMeta,
          payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta));
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tableName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_name'])!,
      operation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation'])!,
      payload: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payload'])!,
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SyncQueueTable createAlias(String alias) {
    return $SyncQueueTable(attachedDatabase, alias);
  }
}

class SyncQueueData extends DataClass implements Insertable<SyncQueueData> {
  final int id;
  final String tableName;
  final String operation;
  final String payload;
  final bool synced;
  final DateTime createdAt;
  const SyncQueueData(
      {required this.id,
      required this.tableName,
      required this.operation,
      required this.payload,
      required this.synced,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['table_name'] = Variable<String>(tableName);
    map['operation'] = Variable<String>(operation);
    map['payload'] = Variable<String>(payload);
    map['synced'] = Variable<bool>(synced);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SyncQueueCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueCompanion(
      id: Value(id),
      tableName: Value(tableName),
      operation: Value(operation),
      payload: Value(payload),
      synced: Value(synced),
      createdAt: Value(createdAt),
    );
  }

  factory SyncQueueData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueData(
      id: serializer.fromJson<int>(json['id']),
      tableName: serializer.fromJson<String>(json['tableName']),
      operation: serializer.fromJson<String>(json['operation']),
      payload: serializer.fromJson<String>(json['payload']),
      synced: serializer.fromJson<bool>(json['synced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tableName': serializer.toJson<String>(tableName),
      'operation': serializer.toJson<String>(operation),
      'payload': serializer.toJson<String>(payload),
      'synced': serializer.toJson<bool>(synced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  SyncQueueData copyWith(
          {int? id,
          String? tableName,
          String? operation,
          String? payload,
          bool? synced,
          DateTime? createdAt}) =>
      SyncQueueData(
        id: id ?? this.id,
        tableName: tableName ?? this.tableName,
        operation: operation ?? this.operation,
        payload: payload ?? this.payload,
        synced: synced ?? this.synced,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('SyncQueueData(')
          ..write('id: $id, ')
          ..write('tableName: $tableName, ')
          ..write('operation: $operation, ')
          ..write('payload: $payload, ')
          ..write('synced: $synced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, tableName, operation, payload, synced, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueData &&
          other.id == this.id &&
          other.tableName == this.tableName &&
          other.operation == this.operation &&
          other.payload == this.payload &&
          other.synced == this.synced &&
          other.createdAt == this.createdAt);
}

class SyncQueueCompanion extends UpdateCompanion<SyncQueueData> {
  final Value<int> id;
  final Value<String> tableName;
  final Value<String> operation;
  final Value<String> payload;
  final Value<bool> synced;
  final Value<DateTime> createdAt;
  const SyncQueueCompanion({
    this.id = const Value.absent(),
    this.tableName = const Value.absent(),
    this.operation = const Value.absent(),
    this.payload = const Value.absent(),
    this.synced = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  SyncQueueCompanion.insert({
    this.id = const Value.absent(),
    required String tableName,
    required String operation,
    required String payload,
    this.synced = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : tableName = Value(tableName),
        operation = Value(operation),
        payload = Value(payload);
  static Insertable<SyncQueueData> custom({
    Expression<int>? id,
    Expression<String>? tableName,
    Expression<String>? operation,
    Expression<String>? payload,
    Expression<bool>? synced,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tableName != null) 'table_name': tableName,
      if (operation != null) 'operation': operation,
      if (payload != null) 'payload': payload,
      if (synced != null) 'synced': synced,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SyncQueueCompanion copyWith(
      {Value<int>? id,
      Value<String>? tableName,
      Value<String>? operation,
      Value<String>? payload,
      Value<bool>? synced,
      Value<DateTime>? createdAt}) {
    return SyncQueueCompanion(
      id: id ?? this.id,
      tableName: tableName ?? this.tableName,
      operation: operation ?? this.operation,
      payload: payload ?? this.payload,
      synced: synced ?? this.synced,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tableName.present) {
      map['table_name'] = Variable<String>(tableName.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueCompanion(')
          ..write('id: $id, ')
          ..write('tableName: $tableName, ')
          ..write('operation: $operation, ')
          ..write('payload: $payload, ')
          ..write('synced: $synced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $WorkersTable workers = $WorkersTable(this);
  late final $PatientsTable patients = $PatientsTable(this);
  late final $VisitsTable visits = $VisitsTable(this);
  late final $SymptomSessionsTable symptomSessions =
      $SymptomSessionsTable(this);
  late final $DiaryEntriesTable diaryEntries = $DiaryEntriesTable(this);
  late final $SyncQueueTable syncQueue = $SyncQueueTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [workers, patients, visits, symptomSessions, diaryEntries, syncQueue];
}
