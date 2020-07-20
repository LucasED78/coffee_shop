import 'package:coffee_shop/core/instance_manager/instance_manager.dart';
import 'package:get_it/get_it.dart';

class CoffeishInstanceManager implements InstanceManager {
  static CoffeishInstanceManager _instance;

  CoffeishInstanceManager._();

  static CoffeishInstanceManager get instance {
    if (_instance == null) _instance = CoffeishInstanceManager._();

    return _instance;
  }

  @override
  void register<T>(T instance) => GetIt.instance.registerSingleton<T>(instance);

  @override
  T get<T>() => GetIt.instance<T>();

  @override
  void unregister<T>() => GetIt.instance.unregister();
}