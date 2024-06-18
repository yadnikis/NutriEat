// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodStruct extends FFFirebaseStruct {
  FoodStruct({
    DocumentReference? foodtype,
    DocumentReference? meals,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _foodtype = foodtype,
        _meals = meals,
        super(firestoreUtilData);

  // "foodtype" field.
  DocumentReference? _foodtype;
  DocumentReference? get foodtype => _foodtype;
  set foodtype(DocumentReference? val) => _foodtype = val;
  bool hasFoodtype() => _foodtype != null;

  // "meals" field.
  DocumentReference? _meals;
  DocumentReference? get meals => _meals;
  set meals(DocumentReference? val) => _meals = val;
  bool hasMeals() => _meals != null;

  static FoodStruct fromMap(Map<String, dynamic> data) => FoodStruct(
        foodtype: data['foodtype'] as DocumentReference?,
        meals: data['meals'] as DocumentReference?,
      );

  static FoodStruct? maybeFromMap(dynamic data) =>
      data is Map ? FoodStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'foodtype': _foodtype,
        'meals': _meals,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'foodtype': serializeParam(
          _foodtype,
          ParamType.DocumentReference,
        ),
        'meals': serializeParam(
          _meals,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static FoodStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodStruct(
        foodtype: deserializeParam(
          data['foodtype'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['meals'],
        ),
        meals: deserializeParam(
          data['meals'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['meals'],
        ),
      );

  @override
  String toString() => 'FoodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodStruct &&
        foodtype == other.foodtype &&
        meals == other.meals;
  }

  @override
  int get hashCode => const ListEquality().hash([foodtype, meals]);
}

FoodStruct createFoodStruct({
  DocumentReference? foodtype,
  DocumentReference? meals,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FoodStruct(
      foodtype: foodtype,
      meals: meals,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FoodStruct? updateFoodStruct(
  FoodStruct? food, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    food
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFoodStructData(
  Map<String, dynamic> firestoreData,
  FoodStruct? food,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (food == null) {
    return;
  }
  if (food.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && food.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final foodData = getFoodFirestoreData(food, forFieldValue);
  final nestedData = foodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = food.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFoodFirestoreData(
  FoodStruct? food, [
  bool forFieldValue = false,
]) {
  if (food == null) {
    return {};
  }
  final firestoreData = mapToFirestore(food.toMap());

  // Add any Firestore field values
  food.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFoodListFirestoreData(
  List<FoodStruct>? foods,
) =>
    foods?.map((e) => getFoodFirestoreData(e, true)).toList() ?? [];
