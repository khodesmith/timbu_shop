import 'package:flutter/material.dart';
import 'package:timbu_shop/constants/app_colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ElevatedButton(
        //   style: ButtonStyle(
        //     iconColor: MaterialStatePropertyAll(Colors.white),
        //     backgroundColor: MaterialStatePropertyAll(kSecondaryColor),
        //   ),
        //   onPressed: () {},
        //   child: Icon(
        //     Icons.arrow_back_ios,
        //   ),
        // ),
        leading: IconButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kSecondaryColor),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
    );
  }
}
