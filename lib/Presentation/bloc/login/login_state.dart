class LoginState {
  final bool isInicializado;
  final bool isCarregando;
  final bool isSucesso;
  final bool isErro;
  final String? erro;
  final String? token;

  LoginState({
    required this.isInicializado,
    required this.isCarregando,
    required this.isSucesso,
    required this.isErro,
    required this.erro,
    required this.token,
  });

  factory LoginState.inicializando() {
    return LoginState(
        isInicializado: true,
        isCarregando: false,
        isSucesso: false,
        isErro: false,
        erro: null,
        token: null);
  }

  factory LoginState.carregando() {
    return LoginState(
        isInicializado: false,
        isCarregando: true,
        isSucesso: false,
        isErro: false,
        erro: null,
        token: null);
  }

  factory LoginState.sucesso(String token) {
    return LoginState(
        isInicializado: false,
        isCarregando: false,
        isSucesso: true,
        isErro: false,
        erro: null,
        token: token);
  }

  factory LoginState.erro(String erro) {
    return LoginState(
        isInicializado: false,
        isCarregando: false,
        isSucesso: false,
        isErro: true,
        erro: erro,
        token: null);
  }
}
