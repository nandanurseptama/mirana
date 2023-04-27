import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'dependency.config.dart';

var instance = GetIt.instance;

@InjectableInit(
  asExtension: false,
  initializerName: "\$Init",
  preferRelativeImports: true,
)
Future<void> initDependency() => $Init(instance);
