import 'package:coffee_shop/modules/menu/bloc/menu_bloc.dart';
import 'package:coffee_shop/modules/menu/menu.page.dart';
import 'package:coffee_shop/modules/menu_details/menu_details.page.dart';
import 'package:coffee_shop/modules/ui_components/splash_screen.dart';
import 'package:coffee_shop/repository/impl/coffee_repository_impl.dart';
import 'package:coffee_shop/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MenuBloc(
        coffeeRepository: CoffeeRepositoryImpl()
      ),
      child: MaterialApp(
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (_) => SplashScreen(),
          "/home": (_) => MenuPage(),
          "/coffee": (_) => MenuDetailsPage()
        },
      ),
    );
  }
}