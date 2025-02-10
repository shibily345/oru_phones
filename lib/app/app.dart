import 'package:oru_phones/services/api_service.dart';
import 'package:oru_phones/ui/bottom_sheets/login_sheet/login_sheet_sheet.dart';
import 'package:oru_phones/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:oru_phones/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:oru_phones/ui/views/home/home_view.dart';
import 'package:oru_phones/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: LoginSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
