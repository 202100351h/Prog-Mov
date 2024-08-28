import 'package:shared_preferences/shared_preferences.dart';

class SharedGlobal {
  static final SharedGlobal myInstance = SharedGlobal.instance();

  SharedGlobal.instance();

  factory SharedGlobal() {
    return myInstance;
  }

  late SharedPreferences preferences;

  Future<void> initSharedPreferences() async {
    preferences = await SharedPreferences.getInstance();
  }

  set fullName(String value) {
    preferences.setString("fullName", value);
  }

  String get fullName {
    return preferences.getString("fullName") ?? "-";
  }

  set address(String value) {
    preferences.setString("address", value);
  }

  String get address {
    return preferences.getString("address") ?? "-";
  }
}
