abstract class Failure implements Exception {
  String get mensagem;
}

class ErrorLogin extends Failure {
  final String mensagem;
  ErrorLogin({required this.mensagem});
}
