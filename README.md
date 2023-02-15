# Aries VCX (Dart and Flutter Wrapper)

| Platform | CPU / Arch                       | 
|----------|----------------------------------|
| Android  | ✅ x84, ✅ x86_64, ✅ arm7, ✅ arm64 |
| IOS      | ⏳ x86_64, ✅ arm64, ❌ arm64-sim   | 
| MacOS    | ✅ x86_64, ✅ arm64                |      
| Linux    | ✅ x86_64, ✅ arm64                |            
| Windows  | ✅ x86_64, ⏳arm64                 |       
| Web      | 🚫 wasm (Low priority)           |       

| **Legend** | ⏳ - InProgress/Pending | ✅ - Supported | ❌ - Not Supported | 🚫 - Not started |
|------------|------------------------|---------------|-------------------|------------------|

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
final instance = await
AriesVcx.defaultInstance;

// Dart-only (just aries_vcx)
final instance = AriesVcx.getInstance(
  path: instanceDirectory,
  // Following line will change based on your platform
  library: DynamicLibrary.open('libaries_vcx.so'),
);
```
