import 'package:a_s_c/common/widgets/bottom_bar.dart';
import 'package:a_s_c/features/admin/screens/add_product_screen.dart';
import 'package:a_s_c/features/auth/screens/auth_screen.dart';
import 'package:a_s_c/features/home/screens/category_deals_screen.dart';
import 'package:a_s_c/features/product_details/screens/product_details.dart';
import 'package:a_s_c/features/search/screens/search_screen.dart';
import 'package:a_s_c/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const AuthScreen());
    case BottomBar.routeName:
          return MaterialPageRoute(builder: (context) => const BottomBar());
    case AddProductScreen.routeName:
          return MaterialPageRoute(builder: (context) => const AddProductScreen());
    case CategoryDealsScreen.routeName:
    var category = routeSettings.arguments as String;
          return MaterialPageRoute(builder: (context) => CategoryDealsScreen(category: category,));  
    case SearchScreen.routeName:
    var  searchQuery = routeSettings.arguments as String;
          return MaterialPageRoute(builder: (context) =>  SearchScreen(searchQuery: searchQuery));   
    case ProductDetailsScreen.routeName:
    var product = routeSettings.arguments as Product;
          return MaterialPageRoute(builder: (context) => ProductDetailsScreen(product: product,));                   
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text("Screen doesn't exist!\n 404"),
          ),
        ),
      );
  }
}
