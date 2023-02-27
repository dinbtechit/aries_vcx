
import 'package:flutter_aries_vcx/flutter_aries_vcx.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as pp;
import 'ffi/stub.dart'
if (dart.library.io) 'ffi/io.dart'
if (dart.library.html) 'ffi/web.dart';

extension FlutterAriesVcx on AriesVcxInterface {

  Future<AriesVcxInterface> get defaultInstance {
    const defaultName = 'default';
    return getInstanceForName(defaultName);
  }

  /// Creates a  with the given path-friendly [name] for Flutter
  Future<AriesVcxInterface> getInstanceForName(String name) async {
    try {
      const defaultSubDir = 'aries_vcx';
      final appSupportDir = await pp.getApplicationSupportDirectory();
      final path = p.join(appSupportDir.path, defaultSubDir, name);
      return getInstanceForPath(path);
    } on pp.MissingPlatformDirectoryException {
      throw UnsupportedError(
        'Looks like this platform does not have an application support '
            'directory. Please call Mimir.getInstanceForPath(someDirPath) instead.',
      );
    }
  }

  /// Creates a  from the given path for Flutter
  AriesVcxInterface getInstanceForPath(String path) =>
      getInstance(path: path, library: createLibraryImpl());


}
