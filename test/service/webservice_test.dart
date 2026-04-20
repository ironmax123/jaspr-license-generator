import 'dart:convert';

import 'package:test/test.dart';
import '../../bin/src/service/webservice.dart';
import '../../bin/src/model/exception/fatal_exception.dart';

void main() {
  group('Test Webservice', () {
    test('test simpel get', () async {
      const webservice = WebService();
      final result = await webservice
          .get('https://pub.dev/api/packages/icapps_license/versions/1.0.0');
      final json = jsonDecode(result) as Map<String, dynamic>;
      expect(json['version'], '1.0.0');
      final pubspec = json['pubspec'] as Map<String, dynamic>;
      expect(pubspec['name'], 'icapps_license');
      expect(pubspec['version'], '1.0.0');
      expect(json.containsKey('archive_url'), isTrue);
      expect(json.containsKey('published'), isTrue);
    });
    test('test simpel get non existing version', () async {
      const webservice = WebService();
      const url =
          'https://pub.dev/api/packages/icapps_license/versions/1.0.014545';
      expect(
        () async => webservice.get(url),
        throwsA(predicate(
            (e) => e is FatalException && e.message == "Failed to get $url")),
      );
    });
  });
}
