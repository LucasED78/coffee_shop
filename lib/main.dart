import 'package:coffee_shop/core/instance_manager/impl/coffeish_instance_manager.dart';
import 'package:coffee_shop/modules/menu/bloc/menu_bloc.dart';
import 'package:coffee_shop/modules/menu/menu.page.dart';
import 'package:coffee_shop/modules/menu_details/menu_details.page.dart';
import 'package:coffee_shop/modules/ui_components/splash_screen.dart';
import 'package:coffee_shop/repository/coffee_repository.dart';
import 'package:coffee_shop/repository/impl/coffee_repository_impl.dart';
import 'package:coffee_shop/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(App());
}

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect((){
      final intanceManager = CoffeishInstanceManager.instance;

      intanceManager.register<CoffeeRepository>(CoffeeRepositoryImpl());

      return (){};
    }, []);

    return BlocProvider(
      create: (_) => MenuBloc(
        coffeeRepository: CoffeishInstanceManager.instance.get<CoffeeRepository>()
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