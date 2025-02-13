import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/domain/extensions/extensions.dart';
import 'package:oru_phones/domain/models/filter_model.dart';
import 'package:oru_phones/domain/models/selected_filter_model.dart';
import 'package:oru_phones/services/filters_service.dart';
import 'package:oru_phones/ui/views/products_page/products_page_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FiltersSheetModel extends BaseViewModel {
  // static final FiltersSheetModel _instance = FiltersSheetModel._internal();
  // factory FiltersSheetModel() => _instance;
  // FiltersSheetModel._internal();
  final _filterServices = locator<FiltersService>();
  final _navServ = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  // final _bottomSheetService = locator<BottomSheetService>();
  // final HomeViewModel _homeViewModel = locator<HomeViewModel>();
  final ProductsPageViewModel _productViewModel =
      locator<ProductsPageViewModel>();

  FilterModel? get filterModel => _filterServices.filter;
  String _selectedFilter = "Brand";
  String get selectedFilter => _selectedFilter;
  SelectedFilterModel _filter = SelectedFilterModel();
  SelectedFilterModel get filter => _filter;

  void selectCategory(String filter) {
    _selectedFilter = filter;
    rebuildUi();
  }

  void setFilter(String key, String option) {
    _filter = filter.addValue(key, option);
    "option added new filter: $filter".dp;
    rebuildUi();
  }

  void removeFilter(String key, String option) {
    _filter = filter.removeValue(key, option);
    "option removed filter: $filter".dp;

    rebuildUi();
  }

  void applyFilter(String? page) async {
    // "Getting Products WIth Filters: $filter".dp;
    _bottomSheetService.completeSheet(SheetResponse(confirmed: true));
    _productViewModel.rebuildWithFilter(filter);
    if (page != null && page == "home") {
      _navServ.navigateToProductsPageView();
    }
  }

  void closeSheet() {
    _bottomSheetService.completeSheet(SheetResponse());
  }

  void navToPage() {}
}
