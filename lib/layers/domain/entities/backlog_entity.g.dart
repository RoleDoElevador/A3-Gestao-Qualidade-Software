// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backlog_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetBackLogEntityCollection on Isar {
  IsarCollection<BackLogEntity> get backLogEntitys => this.collection();
}

const BackLogEntitySchema = CollectionSchema(
  name: r'BackLogEntity',
  id: -8374110248524915429,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'finalData': PropertySchema(
      id: 1,
      name: r'finalData',
      type: IsarType.dateTime,
    ),
    r'initialData': PropertySchema(
      id: 2,
      name: r'initialData',
      type: IsarType.dateTime,
    ),
    r'priority': PropertySchema(
      id: 3,
      name: r'priority',
      type: IsarType.string,
    ),
    r'progressStatus': PropertySchema(
      id: 4,
      name: r'progressStatus',
      type: IsarType.string,
    ),
    r'taskList': PropertySchema(
      id: 5,
      name: r'taskList',
      type: IsarType.objectList,
      target: r'TaskEntity',
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _backLogEntityEstimateSize,
  serialize: _backLogEntitySerialize,
  deserialize: _backLogEntityDeserialize,
  deserializeProp: _backLogEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'TaskEntity': TaskEntitySchema},
  getId: _backLogEntityGetId,
  getLinks: _backLogEntityGetLinks,
  attach: _backLogEntityAttach,
  version: '3.0.5',
);

int _backLogEntityEstimateSize(
  BackLogEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.priority.length * 3;
  bytesCount += 3 + object.progressStatus.length * 3;
  {
    final list = object.taskList;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[TaskEntity]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              TaskEntitySchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _backLogEntitySerialize(
  BackLogEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeDateTime(offsets[1], object.finalData);
  writer.writeDateTime(offsets[2], object.initialData);
  writer.writeString(offsets[3], object.priority);
  writer.writeString(offsets[4], object.progressStatus);
  writer.writeObjectList<TaskEntity>(
    offsets[5],
    allOffsets,
    TaskEntitySchema.serialize,
    object.taskList,
  );
  writer.writeString(offsets[6], object.title);
}

BackLogEntity _backLogEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BackLogEntity(
    description: reader.readString(offsets[0]),
    finalData: reader.readDateTime(offsets[1]),
    id: id,
    initialData: reader.readDateTime(offsets[2]),
    priority: reader.readString(offsets[3]),
    progressStatus: reader.readString(offsets[4]),
    taskList: reader.readObjectList<TaskEntity>(
      offsets[5],
      TaskEntitySchema.deserialize,
      allOffsets,
      TaskEntity(),
    ),
    title: reader.readString(offsets[6]),
  );
  return object;
}

P _backLogEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readObjectList<TaskEntity>(
        offset,
        TaskEntitySchema.deserialize,
        allOffsets,
        TaskEntity(),
      )) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _backLogEntityGetId(BackLogEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _backLogEntityGetLinks(BackLogEntity object) {
  return [];
}

void _backLogEntityAttach(
    IsarCollection<dynamic> col, Id id, BackLogEntity object) {
  object.id = id;
}

extension BackLogEntityQueryWhereSort
    on QueryBuilder<BackLogEntity, BackLogEntity, QWhere> {
  QueryBuilder<BackLogEntity, BackLogEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BackLogEntityQueryWhere
    on QueryBuilder<BackLogEntity, BackLogEntity, QWhereClause> {
  QueryBuilder<BackLogEntity, BackLogEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BackLogEntityQueryFilter
    on QueryBuilder<BackLogEntity, BackLogEntity, QFilterCondition> {
  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      finalDataEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalData',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      finalDataGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalData',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      finalDataLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalData',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      finalDataBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      initialDataEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'initialData',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      initialDataGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'initialData',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      initialDataLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'initialData',
        value: value,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      initialDataBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'initialData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priority',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priority',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priority',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      priorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priority',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'progressStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'progressStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'progressStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'progressStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      progressStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'progressStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskList',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskList',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskList',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskList',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskList',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskList',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskList',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskList',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension BackLogEntityQueryObject
    on QueryBuilder<BackLogEntity, BackLogEntity, QFilterCondition> {
  QueryBuilder<BackLogEntity, BackLogEntity, QAfterFilterCondition>
      taskListElement(FilterQuery<TaskEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'taskList');
    });
  }
}

extension BackLogEntityQueryLinks
    on QueryBuilder<BackLogEntity, BackLogEntity, QFilterCondition> {}

extension BackLogEntityQuerySortBy
    on QueryBuilder<BackLogEntity, BackLogEntity, QSortBy> {
  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> sortByFinalData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalData', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      sortByFinalDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalData', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> sortByInitialData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialData', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      sortByInitialDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialData', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> sortByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      sortByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      sortByProgressStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressStatus', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      sortByProgressStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressStatus', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension BackLogEntityQuerySortThenBy
    on QueryBuilder<BackLogEntity, BackLogEntity, QSortThenBy> {
  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByFinalData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalData', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      thenByFinalDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalData', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByInitialData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialData', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      thenByInitialDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'initialData', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      thenByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      thenByProgressStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressStatus', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy>
      thenByProgressStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressStatus', Sort.desc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension BackLogEntityQueryWhereDistinct
    on QueryBuilder<BackLogEntity, BackLogEntity, QDistinct> {
  QueryBuilder<BackLogEntity, BackLogEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QDistinct> distinctByFinalData() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finalData');
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QDistinct>
      distinctByInitialData() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'initialData');
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QDistinct> distinctByPriority(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priority', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QDistinct>
      distinctByProgressStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BackLogEntity, BackLogEntity, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension BackLogEntityQueryProperty
    on QueryBuilder<BackLogEntity, BackLogEntity, QQueryProperty> {
  QueryBuilder<BackLogEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BackLogEntity, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<BackLogEntity, DateTime, QQueryOperations> finalDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finalData');
    });
  }

  QueryBuilder<BackLogEntity, DateTime, QQueryOperations>
      initialDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'initialData');
    });
  }

  QueryBuilder<BackLogEntity, String, QQueryOperations> priorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priority');
    });
  }

  QueryBuilder<BackLogEntity, String, QQueryOperations>
      progressStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressStatus');
    });
  }

  QueryBuilder<BackLogEntity, List<TaskEntity>?, QQueryOperations>
      taskListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskList');
    });
  }

  QueryBuilder<BackLogEntity, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
