import 'package:coffee_shop/modules/menu/bloc/menu_events.model.dart';
import 'package:coffee_shop/modules/menu/bloc/menu_state.model.dart';
import 'package:coffee_shop/repository/coffee_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuBloc extends Bloc<MenuEvents, MenuState> {
  final CoffeeRepository coffeeRepository;

  MenuBloc({ @required this.coffeeRepository}) : super(MenuItemsLoading());

  @override
  Stream<MenuState> mapEventToState(MenuEvents event) async* {
    if (event is FetchMenuItems) {
      final response = await coffeeRepository.getAll();

      yield MenuItemsFetched(
        items: response
      );
    }
  }
}