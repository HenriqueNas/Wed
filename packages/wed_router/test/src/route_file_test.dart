// ignore_for_file: prefer_const_constructors

import 'package:test/test.dart';
import 'package:wed_router/wed_router.dart';

void main() {
  group('PageFile', () {
    test('copyWith creates a copy (no updates)', () {
      final original = PageFile(
        name: 'index',
        page: '/',
        path: '/path',
        params: <String>[],
      );
      final copy = original.copyWith();
      expect(copy.name, equals(original.name));
      expect(copy.page, equals(original.page));
      expect(copy.path, equals(original.path));
      expect(copy.params, equals(original.params));
    });

    test('copyWith creates a copy (updates)', () {
      final original = PageFile(
        name: 'index',
        page: '/',
        path: '/path',
        params: <String>[],
      );
      final copy = original.copyWith(
        name: 'copy',
        page: '/copy',
        path: '/copy',
        params: ['copy'],
      );
      expect(copy.name, equals('copy'));
      expect(copy.page, equals('/copy'));
      expect(copy.path, equals('/copy'));
      expect(copy.params, equals(['copy']));
    });

    test('toJson returns correct map', () {
      final pageFile = PageFile(
        name: 'index',
        page: '/<id>',
        path: '/path',
        params: <String>['id'],
      );
      expect(
        pageFile.toJson(),
        equals(
          <String, dynamic>{
            'name': 'index',
            'path': '/path',
            'page': '/<id>',
            'file_params': ['id']
          },
        ),
      );
    });
  });
}
