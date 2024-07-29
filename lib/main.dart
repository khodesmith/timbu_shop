import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:timbu_shop/providers/favourite_provider.dart';
import 'package:timbu_shop/providers/product_list_provider.dart';
import 'package:timbu_shop/screens/product_detail/product_detail.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProductListProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => FavouriteProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Verax Shop',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const ProductDetail(),
        ),
      ),
    );
  }
}
