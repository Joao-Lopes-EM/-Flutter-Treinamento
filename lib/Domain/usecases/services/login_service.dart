import 'package:flutter_application_1/Domain/entities/login.dart';

abstract class LoginService {
  Future<Login> obtenhaLogin({required String usuario, required String senha});
}
