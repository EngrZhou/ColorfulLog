# ColorfulLog

A colorful log utils.

![Screenshot](./doc/assets/20200213200212.png)

## English | [中文](./README.md)

## Start

### 1. Add dependencies

Open `pubspec.yaml`file.

```yaml
# remote style
dependencies:
  colorful_log: ^0.0.1

# local style
dependencies:
  colorful_log:
    path: PathOfProject

# git style
dependencies:
  colorful_log:
    git:
      url: git://github.com/EngrZhou/ColorfulLog.git
```

### 2. How to use

```dart
///true:colorful style | false:original style
Log.setColorful(false);
///set log print level
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

## LICENSE

[The 3-Clause BSD License](./LICENSE)

