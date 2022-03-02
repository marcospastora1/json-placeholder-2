class Routes {
  static Future<String> get initialRoute async {
    try {
      // Comentado para sempre ficar no login por enquanto
      // final authDomainService = AuthRepositoryBinding().repository;
      // final authenticated = await authDomainService.isAuthenticated();
      // return !authenticated ? login : home;
      return login;
    } catch (err) {
      return login;
    }
  }

  static const home = '/home';
  static const login = '/login';
  static const posts = '/posts';
  static const menu = '/menu';
  static const albuns = '/albuns';
  static const comments = '/comments';
  static const fotos = '/fotos';
}
