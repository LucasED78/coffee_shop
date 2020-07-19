import 'package:coffee_shop/core/model/coffee.model.dart';

/// Abstract class for a [CoffeeRepository]
abstract class CoffeeRepository {
  /// A function that returns all the coffees
  /// in a list format
  Future<List<Coffee>> getAll();
}