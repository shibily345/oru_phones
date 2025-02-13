import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  factory FilterModel({
    @Default("") String reason,
    @Default(0) int statusCode,
    @Default("") String status,
    required FilterData dataObject,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}

@freezed
class FilterData with _$FilterData {
  factory FilterData({
    @Default([]) List<String> Brand,
    @Default([]) List<String> Ram,
    @Default([]) List<String> Storage,
    @Default([]) List<String> Conditions,
    @Default([]) List<String> Warranty,
  }) = _FilterData;

  factory FilterData.fromJson(Map<String, dynamic> json) =>
      _$FilterDataFromJson(json);
}
