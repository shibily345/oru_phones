import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/domain/models/selected_filter_model.dart';
import 'package:oru_phones/ui/views/products_page/products_page_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SortSheetModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _navServ = locator<NavigationService>();

  final ProductsPageViewModel _productsPageViewModel =
      locator<ProductsPageViewModel>();

  int? selectedIndex;
  final SelectedFilterModel _filter = SelectedFilterModel();
  SelectedFilterModel get filter => _filter;
  final List<String> options = [
    "Value For Money",
    "Price: High To Low",
    "Price: Low To High",
    "Latest",
    "Distance"
  ];

  void selectIndex(int? index) {
    selectedIndex = index;
    notifyListeners();
  }

  Map<String, dynamic> getSortCriteria(String option) {
    switch (option) {
      case "Latest":
        return {
          "sort": {"date": -1}
        };
      case "Price: High To Low":
        return {
          "sort": {"price": -1}
        };
      case "Price: Low To High":
        return {
          "sort": {"price": 1}
        };
      case "Distance":
        return {
          "sort": {"views": -1}
        };
      case "Value For Money":
      default:
        return {"sort": {}};
    }
  }

  void applySort(String option, String? page) async {
    _productsPageViewModel.rebuildWithSort(getSortCriteria(option));

    _bottomSheetService
        .completeSheet(SheetResponse(data: option, confirmed: true));
    if (page != null && page == "home") {
      _navServ.navigateToProductsPageView();
    }
  }

  void closeSheet() {
    _bottomSheetService.completeSheet(SheetResponse());
  }
}
