/// Abstract class for an [InstanceManager]
abstract class InstanceManager {
  /// Register an instance
  /// 
  /// Register an instance based in its type
  void register<T>(T instance);

  /// Gets some instance
  /// 
  /// Returns an instance that is registered
  /// inside the manager
  T get<T>();

  /// unregister a instance
  void unregister<T>();
}