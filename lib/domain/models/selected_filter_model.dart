import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_filter_model.freezed.dart';
part 'selected_filter_model.g.dart';

@freezed
class SelectedFilterModel with _$SelectedFilterModel {
  factory SelectedFilterModel({
    @Default([]) List<String> condition,
    @Default([]) List<String> make,
    @Default([]) List<String> storage,
    @Default([]) List<String> ram,
    @Default([]) List<String> warranty,
    @Default([]) List<int> priceRange,
    @Default(false) bool verified,
    @Default({}) Map<String, dynamic> sort,
    @Default(1) int page,
  }) = _SelectedFilterModel;

  factory SelectedFilterModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedFilterModelFromJson(json);
}

extension SelectedFilterModelExtension on SelectedFilterModel {
  Map<String, dynamic> toFilteredJson() {
    final json = toJson();
    json.removeWhere((key, value) =>
        value == null ||
        (value is List && value.isEmpty) ||
        (value is Map && value.isEmpty));
    return json;
  }
}

extension SelectedFilterModelHelper on SelectedFilterModel {
  // SelectedFilterModel

  SelectedFilterModel addValue(String key, dynamic value) {
    switch (key) {
      case "Conditions":
        return copyWith(condition: [...condition, value]);
      case "Brand":
        return copyWith(make: [...make, value]);
      case "Storage":
        return copyWith(storage: [...storage, value]);
      case "Ram":
        return copyWith(ram: [...ram, value]);
      case "Warranty":
        return copyWith(warranty: [...warranty, value]);
      case "priceRange":
        if (value is int) {
          return copyWith(priceRange: [...priceRange, value]);
        }
        break;
    }
    return this; // If key is invalid, return the same model
  }

  SelectedFilterModel removeValue(String key, dynamic value) {
    switch (key) {
      case "Conditions":
        return copyWith(condition: condition.where((e) => e != value).toList());
      case "Brand":
        return copyWith(make: make.where((e) => e != value).toList());
      case "Storage":
        return copyWith(storage: storage.where((e) => e != value).toList());
      case "Ram":
        return copyWith(ram: ram.where((e) => e != value).toList());
      case "Warranty":
        return copyWith(warranty: warranty.where((e) => e != value).toList());
      case "priceRange":
        if (value is int) {
          return copyWith(
              priceRange: priceRange.where((e) => e != value).toList());
        }
        break;
    }
    return this; // If key is invalid, return the same model
  }

  List<dynamic> getValue(String key) {
    switch (key) {
      case "Conditions":
        return condition;
      case "Brand":
        return make;
      case "Storage":
        return storage;
      case "Ram":
        return ram;
      case "Warranty":
        return warranty;
      case "priceRange":
        return priceRange;
      default:
        return []; // Return empty list if key is invalid
    }
  }

  SelectedFilterModel clearAll() {
    return SelectedFilterModel(
      condition: [],
      make: [],
      storage: [],
      ram: [],
      warranty: [],
      priceRange: [],
    );
  }
}
