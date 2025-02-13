import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:oru_phones/services/api_service.dart';
import 'package:oru_phones/services/products_service.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:oru_phones/services/filters_service.dart';
import 'package:oru_phones/services/fcm_notification_service.dart';
import 'package:oru_phones/services/faqs_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ApiService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ProductsService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AuthenticationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FiltersService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FcmNotificationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FaqsService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterApiService();
  getAndRegisterProductsService();
  getAndRegisterAuthenticationService();
  getAndRegisterFiltersService();
  getAndRegisterFcmNotificationService();
  getAndRegisterFaqsService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockApiService getAndRegisterApiService() {
  _removeRegistrationIfExists<ApiService>();
  final service = MockApiService();
  locator.registerSingleton<ApiService>(service);
  return service;
}

MockProductsService getAndRegisterProductsService() {
  _removeRegistrationIfExists<ProductsService>();
  final service = MockProductsService();
  locator.registerSingleton<ProductsService>(service);
  return service;
}

MockAuthenticationService getAndRegisterAuthenticationService() {
  _removeRegistrationIfExists<AuthenticationService>();
  final service = MockAuthenticationService();
  locator.registerSingleton<AuthenticationService>(service);
  return service;
}

MockFiltersService getAndRegisterFiltersService() {
  _removeRegistrationIfExists<FiltersService>();
  final service = MockFiltersService();
  locator.registerSingleton<FiltersService>(service);
  return service;
}

MockFcmNotificationService getAndRegisterFcmNotificationService() {
  _removeRegistrationIfExists<FcmNotificationService>();
  final service = MockFcmNotificationService();
  locator.registerSingleton<FcmNotificationService>(service);
  return service;
}

MockFaqsService getAndRegisterFaqsService() {
  _removeRegistrationIfExists<FaqsService>();
  final service = MockFaqsService();
  locator.registerSingleton<FaqsService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
