class AppString {
  AppString._init();

  static AppString? _instance;
  // ignore: prefer_constructors_over_static_methods
  static AppString get instance {
    _instance ??= AppString._init();
    return _instance!;
  }

  final String appBarTitle = 'Тапшырма 01';
  final String secondAppBarTitle = 'Second Screen';
  final String counterTitle = 'сан:';
}
