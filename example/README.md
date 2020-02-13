# colorful_log_example

```dart
///是否使用彩色log样式 true:使用 false:不使用
Log.setColorful(false);
///设置log输出级别
Log.setLogLevel(Log.warn);
```

```dart
///as android usual style
Log.V(tag, 'This is VERBOSE level colorful Log with custom tag.');

///as dart
Log.i(tag: tag, msg: 'This is INFO    level colorful Log with custom tag.');

///as dart
Log.d(msg: 'This is DEBUG   level colorful Log with none tag.');
```
