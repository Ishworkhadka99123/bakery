// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'model/user.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 4673488945083285009),
      name: 'User',
      lastPropertyId: const IdUid(7, 6221887960517618971),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2283470063385854552),
            name: 'uId',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 1612718285661344359),
            name: 'fname',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7804387992630862223),
            name: 'lname',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2643038881002153745),
            name: 'gender',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3683969749115902257),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 1570454474151635918),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 6221887960517618971),
            name: 'userId',
            type: 9,
            flags: 2080,
            indexId: const IdUid(2, 1804226603385882372))
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 4673488945083285009),
      lastIndexId: const IdUid(2, 1804226603385882372),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [5767170661440253984],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    User: EntityDefinition<User>(
        model: _entities[0],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {},
        getId: (User object) => object.uId,
        setId: (User object, int id) {
          object.uId = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final fnameOffset =
              object.fname == null ? null : fbb.writeString(object.fname!);
          final lnameOffset =
              object.lname == null ? null : fbb.writeString(object.lname!);
          final genderOffset =
              object.gender == null ? null : fbb.writeString(object.gender!);
          final emailOffset =
              object.email == null ? null : fbb.writeString(object.email!);
          final passwordOffset = object.password == null
              ? null
              : fbb.writeString(object.password!);
          final userIdOffset =
              object.userId == null ? null : fbb.writeString(object.userId!);
          fbb.startTable(8);
          fbb.addInt64(0, object.uId);
          fbb.addOffset(1, fnameOffset);
          fbb.addOffset(2, lnameOffset);
          fbb.addOffset(3, genderOffset);
          fbb.addOffset(4, emailOffset);
          fbb.addOffset(5, passwordOffset);
          fbb.addOffset(6, userIdOffset);
          fbb.finish(fbb.endTable());
          return object.uId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = User(
              uId: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              fname: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              lname: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              userId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 16),
              gender: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              email: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              password: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.uId]
  static final uId = QueryIntegerProperty<User>(_entities[0].properties[0]);

  /// see [User.fname]
  static final fname = QueryStringProperty<User>(_entities[0].properties[1]);

  /// see [User.lname]
  static final lname = QueryStringProperty<User>(_entities[0].properties[2]);

  /// see [User.gender]
  static final gender = QueryStringProperty<User>(_entities[0].properties[3]);

  /// see [User.email]
  static final email = QueryStringProperty<User>(_entities[0].properties[4]);

  /// see [User.password]
  static final password = QueryStringProperty<User>(_entities[0].properties[5]);

  /// see [User.userId]
  static final userId = QueryStringProperty<User>(_entities[0].properties[6]);
}
