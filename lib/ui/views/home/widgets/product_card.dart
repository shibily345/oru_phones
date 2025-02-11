import 'package:flutter/material.dart';
import 'package:oru_phones/domain/models/product.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';
import 'package:oru_phones/ui/views/home/widgets/image.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
              const Positioned(
                top: 8,
                right: 8,
                child: Icon(Icons.favorite_border, color: Colors.grey),
              ),
            ],
          ),
          verticalSpaceTiny,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product.marketingName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ShowText(
                text:
                    "${product.deviceRam}/${product.deviceStorage} ⦿ ${product.deviceCondition}",
                fontSize: 13,
                fontWeight: FontWeight.normal),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  "₹ ${product.discountedPrice.toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Text(
                  "₹ ${product.originalPrice.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "(${((1 - product.discountedPrice / product.originalPrice) * 100).toStringAsFixed(0)}% off)",
              style: const TextStyle(color: Colors.red, fontSize: 14),
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
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
