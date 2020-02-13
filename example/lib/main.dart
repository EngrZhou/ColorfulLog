import 'package:flutter/material.dart';
import 'package:colorful_log/colorful_log.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String tag = 'MyApp';

  @override
  void initState() {
    super.initState();
    _testLogPrinter();
  }

  _testLogPrinter() {
    Log.setLogLevel(Log.verbose);
    _logPrint(true);
    Log.setColorful(false);
    _logPrint(false);

    Log.setColorful(true);
    Log.i(msg: '>>>The following Log will only print warning levels<<<');

    Log.setLogLevel(Log.warn);
    _logPrint(true);
  }

  _logPrint(bool colorful) {
    ///as android usual
    Log.V(tag, 'This is VERBOSE level ${colorful?'colorful':'original'} Log with custom tag.');

    ///as dart
    Log.i(tag: tag, msg: 'This is INFO    level ${colorful?'colorful':'original'} Log with custom tag.');

    ///as dart
    Log.d(msg: '    This is DEBUG   level ${colorful?'colorful':'original'} Log with none tag.');

    ///as android usual
    Log.W(tag, 'This is WARN    level ${colorful?'colorful':'original'} Log with none tag.');

    ///as dart
    Log.e(msg: '    This is ERROR   level ${colorful?'colorful':'original'} Log with none tag.');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Watch ur console.'),
              RaisedButton.icon(
                icon: Icon(Icons.info),
                label: Text('Click & Print'),
                onPressed: () {
                  _testLogPrinter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
