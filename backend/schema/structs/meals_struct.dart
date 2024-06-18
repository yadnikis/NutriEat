// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MealsStruct extends FFFirebaseStruct {
  MealsStruct({
    DocumentReference? diettype,
    DocumentReference? diettype1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _diettype = diettype,
        _diettype1 = diettype1,
        super(firestoreUtilData);

  // "diettype" field.
  DocumentReference? _diettype;
  DocumentReference? get diettype => _diettype;
  set diettype(DocumentReference? val) => _diettype = val;
  bool hasDiettype() => _diettype != null;

  // "diettype1" field.
  DocumentReference? _diettype1;
  DocumentReference? get diettype1 => _diettype1;
  set diettype1(DocumentReference? val) => _diettype1 = val;
  bool hasDiettype1() => _diettype1 != null;

  static MealsStruct fromMap(Map<String, dynamic> data) => MealsStruct(
        diettype: data['diettype'] as DocumentReference?,
        diettype1: data['diettype1'] as DocumentReference?,
      );

  static MealsStruct? maybeFromMap(dynamic data) =>
      data is Map ? MealsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'diettype': _diettype,
        'diettype1': _diettype1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'diettype': serializeParam(
          _diettype,
          ParamType.DocumentReference,
        ),
        'diettype1': serializeParam(
          _diettype1,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static MealsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MealsStruct(
        diettype: deserializeParam(
          data['diettype'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Dashboard'],
        ),
        diettype1: deserializeParam(
          data['diettype1'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Dashboard'],
        ),
      );

  @override
  String toString() => 'MealsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MealsStruct &&
        diettype == other.diettype &&
        diettype1 == other.diettype1;
  }

  @override
  int get hashCode => const ListEquality().hash([diettype, diettype1]);
}

MealsStruct createMealsStruct({
  DocumentReference? diettype,
  DocumentReference? diettype1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MealsStruct(
      diettype: diettype,
      diettype1: diettype1,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MealsStruct? updateMealsStruct(
  MealsStruct? meals, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    meals
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMealsStructData(
  Map<String, dynamic> firestoreData,
  MealsStruct? meals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (meals == null) {
    return;
  }
  if (meals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && meals.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mealsData = getMealsFirestoreData(meals, forFieldValue);
  final nestedData = mealsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = meals.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMealsFirestoreData(
  MealsStruct? meals, [
  bool forFieldValue = false,
]) {
  if (meals == null) {
    return {};
  }
  final firestoreData = mapToFirestore(meals.toMap());

  // Add any Firestore field values
  meals.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMealsListFirestoreData(
  List<MealsStruct>? mealss,
) =>
    mealss?.map((e) => getMealsFirestoreData(e, true)).toList() ?? [];
