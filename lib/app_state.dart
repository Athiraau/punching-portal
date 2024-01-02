import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _Time;
  DateTime? get Time => _Time;
  set Time(DateTime? _value) {
    _Time = _value;
  }

  String _Camera = '';
  String get Camera => _Camera;
  set Camera(String _value) {
    _Camera = _value;
  }

  int _ecode = 0;
  int get ecode => _ecode;
  set ecode(int _value) {
    _ecode = _value;
  }

  String _punchtime = '';
  String get punchtime => _punchtime;
  set punchtime(String _value) {
    _punchtime = _value;
  }

  int _brid = 0;
  int get brid => _brid;
  set brid(int _value) {
    _brid = _value;
  }

  String _photostaff = '';
  String get photostaff => _photostaff;
  set photostaff(String _value) {
    _photostaff = _value;
  }

  String _ipd = '';
  String get ipd => _ipd;
  set ipd(String _value) {
    _ipd = _value;
  }

  String _LocalBase64Image = '';
  String get LocalBase64Image => _LocalBase64Image;
  set LocalBase64Image(String _value) {
    _LocalBase64Image = _value;
  }

  String _IPADD = '';
  String get IPADD => _IPADD;
  set IPADD(String _value) {
    _IPADD = _value;
  }

  String _HOSTNAME = '';
  String get HOSTNAME => _HOSTNAME;
  set HOSTNAME(String _value) {
    _HOSTNAME = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
