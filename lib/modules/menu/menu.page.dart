import 'package:coffee_shop/core/model/coffee.model.dart';
import 'package:coffee_shop/modules/menu/bloc/menu_bloc.dart';
import 'package:coffee_shop/modules/menu/bloc/menu_events.model.dart';
import 'package:coffee_shop/modules/menu/bloc/menu_state.model.dart';
import 'package:coffee_shop/modules/menu/widgets/menu_list.widget.dart';
import 'package:coffee_shop/modules/menu/widgets/menu_list_tile.widget.dart';
import 'package:coffee_shop/modules/menu/widgets/menu_shimmer.widget.dart';
import 'package:coffee_shop/modules/ui_components/cart_with_indicator.dart';
import 'package:coffee_shop/modules/ui_components/coffeish_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MenuPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect((){
       BlocProvider.of<MenuBloc>(context)
        .add(FetchMenuItems());

        return (){};
    }, []);
    
    return Scaffold(
      appBar: CoffeishAppBar(
        title: "Menu",
        actions: <Widget>[
          CartWithIndicator()
        ],
      ),
      body: BlocBuilder<MenuBloc, MenuState>(
        builder: (_, state) {
          return state is MenuItemsLoading ? MenuShimmer() : MenuList(
            coffees: state.props[0] as List<Coffee>,
          );
        },
      ),
    );
  }
}