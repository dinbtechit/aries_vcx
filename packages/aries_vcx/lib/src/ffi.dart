import 'package:aries_vcx/src/agency_client_generated.io.dart';

import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

AgencyClientFFI? _wrapper;

AgencyClientFFI createWrapper(ExternalLibrary lib) {
  _wrapper ??= createWrapperImpl(lib);
  return _wrapper!;
}
