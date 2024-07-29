import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timbu_shop/screens/product_list/product_model.dart';
// import 'package:provider/provider.dart';

class ProductCardView extends StatelessWidget {
  const ProductCardView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(5),
      // width: 181.w,
      // height: 180.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF9FBFD),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFFE6E9EC)),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF101828),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: double.infinity,
                child: Image.network(
                  product.productImgUrl,
                  height: 50.h,
                  width: double.maxFinite,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                // top: 0,
                right: 2,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
              )
            ],
          ),
          const SizedBox(height: 6),
          Text(
            product.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Text(
                'category',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Color(0xFFA9A9A9),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE6EAEE)),
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  textAlign: TextAlign.center,
                  '1.8grams',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 8,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 12),
              Icon(Icons.star, color: Colors.yellow, size: 12),
              Icon(Icons.star, color: Colors.yellow, size: 12),
              Icon(Icons.star, color: Colors.yellow, size: 12),
              Icon(Icons.star, color: Colors.yellow, size: 12),
              SizedBox(width: 10),
              Text(
                textAlign: TextAlign.center,
                '(4.8 ratings)',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 8,
                  color: Color(0xFF606060),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${product.currency} ${product.currentPrice}',
                style: TextStyle(
                    color: const Color(0xFFDC1250),
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    height: 2.sp),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/svg/cart_icon.svg',
                  colorFilter: const ColorFilter.mode(
                      Color(0xFFDC1250), BlendMode.srcIn),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
