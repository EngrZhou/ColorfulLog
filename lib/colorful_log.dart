class Log {
  static int _logLevel = 1;
  static bool _colorful = true;
  static final int verbose = 1;
  static final int info = 2;
  static final int debug = 3;
  static final int warn = 4;
  static final int error = 5;

  static setLogLevel(int level) {
    _logLevel = level;
  }

  static setColorful(bool colorful) {
    _colorful = colorful;
  }

  static V(String tag, String msg) {
    v(tag: tag, msg: msg);
  }

  static v({String tag = "V", String msg}) {
    if (_logLevel > verbose) {
      return;
    }
    if (_colorful) {
      print("\x1B[40m\x1B[37;1m[$tag]\x1B[0m$msg");
    } else {
      _printDefault(tag, msg);
    }
  }

  static I(String tag, String msg) {
    i(tag: tag, msg: msg);
  }

  static i({String tag = "I", String msg}) {
    if (_logLevel > info) {
      return;
    }
    if (_colorful) {
      print("\x1B[42m\x1B[37;1m[$tag]\x1B[0m\x1B[32m$msg");
    } else {
      _printDefault(tag, msg);
    }
  }

  static D(String tag, String msg) {
    d(tag: tag, msg: msg);
  }

  static d({String tag = "D", String msg}) {
    if (_logLevel > debug) {
      return;
    }
    if (_colorful) {
      print("\x1B[44m\x1B[37;1m[$tag]\x1B[0m\x1B[34m$msg");
    } else {
      _printDefault(tag, msg);
    }
  }

  static W(String tag, String msg) {
    w(tag: tag, msg: msg);
  }

  static w({String tag = "W", String msg}) {
    if (_logLevel > warn) {
      return;
    }
    if (_colorful) {
      print("\x1B[43m\x1B[37;1m[$tag]\x1B[0m\x1B[33m$msg");
    } else {
      _printDefault(tag, msg);
    }
  }

  static E(String tag, String msg) {
    e(tag: tag, msg: msg);
  }

  static e({String tag = "E", String msg}) {
    if (_logLevel > error) {
      return;
    }
    if (_colorful) {
      print("\x1B[41m\x1B[37;1m[$tag]\x1B[0m\x1B[31m$msg");
    } else {
      _printDefault(tag, msg);
    }
  }

  static _printDefault(String tag, String msg) {
    print("[$tag]$msg");
  }
}
