import 'package:coffee_shop/core/model/coffee.model.dart';
import 'package:equatable/equatable.dart';

abstract class MenuState extends Equatable {
  @override
  List<Object> get props => [];
}

class MenuItemsFetched extends MenuState {
  final List<Coffee> items;

  MenuItemsFetched({
    this.items
  });

  @override
  List<Object> get props => [items];
}

class MenuItemsLoading extends MenuState {}