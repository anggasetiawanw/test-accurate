enum Flavor {
  prod,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Test Accurate App';
      case Flavor.dev:
        return 'Dev-Test Accurate App';
      default:
        return 'title';
    }
  }

    static String get baseUrl {
    switch (appFlavor) {
      case Flavor.prod:
        return 'https://627e360ab75a25d3f3b37d5a.mockapi.io/api/';
      case Flavor.dev:
        return 'https://627e360ab75a25d3f3b37d5a.mockapi.io/api/';
      default:
        return 'https://627e360ab75a25d3f3b37d5a.mockapi.io/api/';
    }
  }

}
