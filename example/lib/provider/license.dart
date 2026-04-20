import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:example/util/license.dart';

part 'license.g.dart';

@riverpod
class LicenseService extends _$LicenseService {
  @override
  List<License> build() {
    return LicenseUtil.getLicenses();
  }
}
