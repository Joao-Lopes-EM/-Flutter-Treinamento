abstract class LoginEvent {}

class LoginPressedButtonEvent extends LoginEvent {
  final String usuario;
  final String senha;

  LoginPressedButtonEvent({
    required this.usuario,
    required this.senha,
  });
}
