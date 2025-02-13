import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/domain/extensions/extensions.dart';
import 'package:oru_phones/domain/models/filter_model.dart';
import 'package:oru_phones/services/api_service.dart';

class FiltersService {
  final _apiServices = locator<ApiService>();

  FilterModel? _filter;
  FilterModel? get filter => _filter;

  Future<void> getFilter() async {
    "getting filters".dp;
    _apiServices.fetchFilters().then((value) {
      // value.toString().dp;
      _filter = value;
      _filter!.dataObject.toJson().keys.toString().dp;
    });
  }
}
