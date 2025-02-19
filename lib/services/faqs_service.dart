import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/themes/extensions/extensions.dart';
import 'package:oru_phones/domain/models/faq_model.dart';
import 'package:oru_phones/services/api_service.dart';

class FaqsService {
  final _apiServices = locator<ApiService>();

  List<FAQ> _faqs = [];
  List<FAQ> get faqs => _faqs;

  Future<List<FAQ>> getFaqs() async {
    "getting faqs".dp;
    _faqs = await _apiServices.fetchFAQs();
    return _faqs;
  }
}
