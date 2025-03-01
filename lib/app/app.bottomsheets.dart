// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/bottom_sheets/filters/filters_sheet.dart';
import '../ui/bottom_sheets/login_sheet/login_sheet_sheet.dart';
import '../ui/bottom_sheets/notice/notice_sheet.dart';
import '../ui/bottom_sheets/sort/sort_sheet.dart';

enum BottomSheetType {
  notice,
  login,
  filters,
  sort,
}

void setupBottomSheetUi() {
  final bottomsheetService = locator<BottomSheetService>();

  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.notice: (context, request, completer) =>
        NoticeSheet(request: request, completer: completer),
    BottomSheetType.login: (context, request, completer) =>
        LoginSheet(request: request, completer: completer),
    BottomSheetType.filters: (context, request, completer) =>
        FiltersSheet(request: request, completer: completer),
    BottomSheetType.sort: (context, request, completer) =>
        SortSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
