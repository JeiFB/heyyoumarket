import 'package:get_it/get_it.dart';
import 'package:heyyoumarket/injection.config.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@injectableInit
Future<void> configureDependecies() async => await locator.init();
