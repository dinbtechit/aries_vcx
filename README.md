# Aries VCX (Dart and Flutter Wrapper)

## Installation
**For Plain Dart:**
```sh
dart pub add aries_vcx
```
**For Flutter :**
```shell
flutter pub add flutter_aries_vcx
```

## Usage:
```dart
// with flutter (flutter_aries_vcx)
final instance = await AriesVcx.defaultInstance;

// Dart-only (just aries_vcx)
final instance = AriesVcx.getInstance(
  path: instanceDirectory,
  // Following line will change based on your platform
  library: DynamicLibrary.open('libembedded_ariesvcx.so'),
);
```
