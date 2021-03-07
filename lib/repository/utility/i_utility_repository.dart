abstract class IUtilityRepository {
  int getColorHexFromStr(String? colorStr);

  void launchURL({required String? url});

  bool get showFps;

  set showFps(bool value);
}
