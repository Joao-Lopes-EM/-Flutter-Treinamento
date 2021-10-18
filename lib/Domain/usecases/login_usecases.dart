import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/Domain/entities/login.dart';
import 'package:flutter_application_1/Domain/erros/failure.dart';
import 'package:flutter_application_1/Domain/usecases/services/login_service.dart';

class LoginUseCase {
  final LoginService loginService;

  LoginUseCase({required this.loginService});

  Future<Either<Failure, Login>> realizeLogin(
      {required String usuario, required String senha}) async {
    if (usuario.isEmpty || senha.isEmpty) {
      return Left(ErrorLogin(mensagem: 'Informe login e senha'));
    }
    try {
      var login =
          await loginService.obtenhaLogin(usuario: usuario, senha: senha);
      return Right(login);
    } catch (erro) {
      return Left(ErrorLogin(mensagem: erro.toString()));
    }
  }
}
