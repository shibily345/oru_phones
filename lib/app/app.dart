import 'package:oru_phones/services/api_service.dart';
import 'package:oru_phones/services/authentication_service.dart';
import 'package:oru_phones/services/faqs_service.dart';
import 'package:oru_phones/services/fcm_notification_service.dart';
import 'package:oru_phones/services/filters_service.dart';
import 'package:oru_phones/services/products_service.dart';
import 'package:oru_phones/ui/bottom_sheets/filters/filters_sheet.dart';
import 'package:oru_phones/ui/bottom_sheets/login_sheet/login_sheet_sheet.dart';
import 'package:oru_phones/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:oru_phones/ui/bottom_sheets/sort/sort_sheet.dart';
import 'package:oru_phones/ui/dialogs/accept_tnc/accept_tnc_dialog.dart';
import 'package:oru_phones/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:oru_phones/ui/views/home/home_view.dart';
import 'package:oru_phones/ui/views/login/login_view.dart';
import 'package:oru_phones/ui/views/products_page/products_page_view.dart';
import 'package:oru_phones/ui/views/products_page/products_page_viewmodel.dart';
import 'package:oru_phones/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ProductsPageView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: ProductsService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: FiltersService),
    LazySingleton(classType: ProductsPageViewModel),
    LazySingleton(classType: FcmNotificationService),
    LazySingleton(classType: FaqsService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: LoginSheet),
    StackedBottomsheet(classType: FiltersSheet),
    StackedBottomsheet(classType: SortSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: AcceptTncDialog),
// @stacked-dialog
  ],
)
class App {}
