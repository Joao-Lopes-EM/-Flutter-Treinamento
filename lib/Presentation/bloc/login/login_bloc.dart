import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/Domain/entities/login.dart';
import 'package:flutter_application_1/Domain/erros/failure.dart';
import 'package:flutter_application_1/Domain/usecases/login_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc({required this.loginUseCase}) : super(LoginState.inicializando());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginPressedButtonEvent) {
      yield LoginState.carregando();

      Either<Failure, Login> result = await loginUseCase.realizeLogin(
          usuario: event.usuario, senha: event.senha);

      yield result.fold((failure) => LoginState.erro(failure.mensagem),
          (sucess) => LoginState.sucesso(sucess.token));

      //enviar usuario e senha para a api e guardar o retorno login
    }
  }
}
