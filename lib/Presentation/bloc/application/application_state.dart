class ApplicationState {
  final bool isInicializado;
  final bool isCarregando;
  final bool isAutenticado;
  final bool isDesautenticado;

  ApplicationState(
      {required this.isInicializado,
      required this.isCarregando,
      required this.isAutenticado,
      required this.isDesautenticado});

  factory ApplicationState.inicializando() {
    return ApplicationState(
        isInicializado: true,
        isCarregando: false,
        isAutenticado: false,
        isDesautenticado: false);
  }

  factory ApplicationState.carregando() {
    return ApplicationState(
        isInicializado: false,
        isCarregando: true,
        isAutenticado: false,
        isDesautenticado: false);
  }

  factory ApplicationState.autenticado() {
    return ApplicationState(
        isInicializado: false,
        isCarregando: false,
        isAutenticado: true,
        isDesautenticado: false);
  }

  factory ApplicationState.desautenticado() {
    return ApplicationState(
        isInicializado: false,
        isCarregando: false,
        isAutenticado: false,
        isDesautenticado: true);
  }
}
