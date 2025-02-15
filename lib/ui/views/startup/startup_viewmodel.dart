import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:oru_phones/services/faqs_service.dart';
import 'package:oru_phones/services/fcm_notification_service.dart';
import 'package:oru_phones/services/filters_service.dart';
import 'package:oru_phones/services/products_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _productService = locator<ProductsService>();
  final _authServices = locator<AuthenticationService>();
  final _filterServices = locator<FiltersService>();
  final _faqServices = locator<FaqsService>();
  final _fcmService = locator<FcmNotificationService>();

  
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    await _productService.getProducts();
    await _productService.getBrands();
    await _authServices.checkLoginStatus();
    await _filterServices.getFilter();
    await _faqServices.getFaqs();
    await _fcmService.initialize();
    
    

    _navigationService.replaceWithHomeView();
  }
}
