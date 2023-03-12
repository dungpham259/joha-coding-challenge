class AppConfig {
  static String baseUrl = '';
  static void configDev() {
    baseUrl = 'https://reqres.in/api';
  }

  static void configProd() {
    baseUrl = 'https://reqres.in/api';
  }
}
