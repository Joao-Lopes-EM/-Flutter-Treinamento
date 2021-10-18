import 'package:flutter_application_1/Domain/usecases/services/login_service.dart';
import 'package:flutter_application_1/Presentation/bloc/bloc.dart';
import 'package:get_it/get_it.dart';

import 'Data/services/login_service_impl.dart';
import 'Domain/usecases/login_usecases.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(() => LoginBloc(loginUseCase: getIt()));
  getIt.registerFactory(() => LoginUseCase(loginService: getIt()));

  getIt.registerFactory<LoginService>(() => LoginServiceImpl());
}
