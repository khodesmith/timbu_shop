import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:timbu_shop/providers/product_list_provider.dart';
import 'package:timbu_shop/screens/product_list/product_card_view.dart';
import 'package:timbu_shop/screens/widgets/my_appbar.dart';

class ProductListingScreen extends StatefulWidget {
  const ProductListingScreen({
    super.key,
  });

  @override
  State<ProductListingScreen> createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {
  @override
  void initState() {
    Future.microtask(
      () => context.read<ProductListProvider>().getProductList(),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(269.h), child: const MyAppBar()),
      body: Consumer<ProductListProvider>(
        builder: (context, value, child) {
          if (value.loading) {
            log(value.loading.toString());
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (value.product.isEmpty) {
            return const Center(
              child: Text('Empty List'),
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10),
              shrinkWrap: true,
              itemCount: value.product.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.86,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final product = value.product[index];
                return ProductCardView(product: product);
              },
            );
          }
        },
      ),
    );
  }
}
