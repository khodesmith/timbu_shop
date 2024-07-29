import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timbu_shop/constants/app_colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 31, left: 19, top: 67),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 28,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Verax',
                          style: TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: kSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Shop',
                          style: TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 20,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/svg/cart_icon.svg'),
                  ),
                  // Stack(
                  //   children: [
                  //     IconButton(
                  //       onPressed: () {},
                  //       icon: SvgPicture.asset(
                  //           'assets/images/svg/notification-bing.svg'),
                  //     ),
                  //     Positioned(
                  //       right: 9,
                  //       child: Container(
                  //         padding: const EdgeInsets.all(3),
                  //         decoration: const BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: kSecondaryColor,
                  //           // borderRadius: BorderRadius.circular(5),
                  //         ),
                  //         child: const Text(
                  //           '1',
                  //           style: TextStyle(
                  //             color: kPrimaryColor,
                  //             fontSize: 12,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for products...',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA9A9A9),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade200)),

                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 16,
                      ),
                      // fillColor: ,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 8.w,
                // ),
                // Container(
                //   child: const Icon(Icons.tune),
                // ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Vitamins',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // IconButton(
              //   onPressed: () {},
              //   icon: SvgPicture.asset(
              //     'assets/images/svg/grid_icon.svg',
              //   ),
              // ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            ],
          )
        ],
      ),
    );
  }
}
