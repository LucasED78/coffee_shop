import 'package:coffee_shop/core/model/coffee.model.dart';
import 'package:coffee_shop/repository/coffee_repository.dart';
import 'package:dio/dio.dart';

class CoffeeRepositoryImpl implements CoffeeRepository {
  @override
  Future<List<Coffee>> getAll() async {
    final response = await Dio().get("https://desafio-mobility.herokuapp.com/products.json");

    return response.data["products"].map<Coffee>((data) => Coffee.fromJson(data)).toList();
  }
  
}