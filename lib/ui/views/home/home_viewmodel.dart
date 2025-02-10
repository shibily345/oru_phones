import 'package:oru_phones/app/app.bottomsheets.dart';
import 'package:oru_phones/app/app.dialogs.dart';
import 'package:oru_phones/app/app.locator.dart';
import 'package:oru_phones/app/app.router.dart';
import 'package:oru_phones/ui/common/app_strings.dart';
import 'package:oru_phones/ui/views/home/widgets/product_card.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FormViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final List<String> options = [
    "Sell Used Phones",
    "Buy Used Phones",
    "Compare Prices",
    "My Profile",
    "My Listings",
    "Services",
    "New",
    "Register your Store",
    "Get the App"
  ];
  final List<String> images = [
    "assets/images/Property 1=Banner 1.png",
    "assets/images/Property 1=Banner 2.png",
    "assets/images/Property 1=Banner 3.png",
    "assets/images/Property 1=Banner 4.png",
    "assets/images/Property 1=Banner 5.png",
  ];
  final List<Product> products = List.generate(
    10,
    (index) => Product(
      title: "Apple iPhone 13 Pro",
      image:
          "assets/images/Property 1=Banner 1.png", // Change this to actual image path
      price: 41500,
      oldPrice: 81500,
      location: "Nijampur, Luc...",
      date: "July 25th",
      isVerified: true,
    ),
  );
  final List<Map<String, String>> menuItems = [
    {
      "title": "Sell Used Phones",
      "image": "assets/images/icons/file 1.png",
      "route": "/sell"
    },
    {
      "title": "Buy Used Phones",
      "image": "assets/images/icons/file 2.png",
      "route": "/buy"
    },
    {
      "title": "Compare Prices",
      "image": "assets/images/icons/image-1.png",
      "route": "/compare"
    },
    {
      "title": "My Profile",
      "image": "assets/images/icons/image-2.png",
      "route": "/profile"
    },
    {
      "title": "My Listings",
      "image": "assets/images/icons/image-3.png",
      "route": "/listings"
    },
    {
      "title": "Services",
      "image": "assets/images/icons/image-4.png",
      "route": "/services"
    },
    {
      "title": "Register Your Store",
      "image": "assets/images/icons/image-5.png",
      "route": "/register-store"
    },
    {
      "title": "Get the App",
      "image": "assets/images/icons/image-6.png",
      "route": "/get-app"
    },
  ];
  int _counter = 0;
  void updateIndex(int index) {
    _currentIndex = index;
    rebuildUi();
  }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.login,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void goToLoginPage() {
    _navigationService.navigateToLoginView();
  }
}
