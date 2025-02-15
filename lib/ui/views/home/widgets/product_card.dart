import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oru_phones/domain/models/product.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';
import 'package:oru_phones/ui/views/home/widgets/image.dart';
import 'package:oru_phones/ui/views/products_page/products_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  // final ProductsPageViewModel vm;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductsPageViewModel>.reactive(
        onViewModelReady: (viewModel) => viewModel.initLikedp(),
        viewModelBuilder: () => ProductsPageViewModel(),
        disposeViewModel: false,
        builder: (context, vm, child) {
          return Card(
            borderOnForeground: true,
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12)),
                        child: CachedImage(
                            imageUrl: product.imagePath,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: screenHeight(context) * 0.19)),
                    if (product.verified)
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "Verified",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: vm.isloading
                          ? const CircularProgressIndicator()
                          : IconButton(
                              onPressed: () {
                                vm.isLoggedin
                                    ? vm.toggleLike(product.listingId)
                                    : vm.showLoginBottomSheet();
                              },
                              icon: vm.containsValue(product.listingId)
                                  ? const Icon(Icons.favorite,
                                      color: Colors.red)
                                  : const Icon(Icons.favorite_border,
                                      color: Colors.grey)),
                    ),
                  ],
                ),
                verticalSpaceTiny,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: Text(
                    product.marketingName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: ShowText(
                      text:
                          "${product.deviceRam}/${product.deviceStorage} ⦿ ${product.deviceCondition}",
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                  child: Row(
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "₹ ${product.discountedPrice}",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "₹ ${product.originalPrice.toStringAsFixed(0)}",
                        style: const TextStyle(
                          fontSize: 10,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "(${((1 - product.discountedPrice / product.originalPrice) * 100).toStringAsFixed(0)}% off)",
                          style: TextStyle(color: Colors.red, fontSize: 8.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 233, 232, 232),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10))),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Abirami Nagar, Maharashtra",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        product.listingDate,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
