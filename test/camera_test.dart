import 'dart:ffi';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import '../lib/assimp.dart';
import '../lib/src/bindings.dart';
import 'test_utils.dart';

// DO NOT EDIT (generated by tool/testgen)

void main() {
  prepareTest();

  test('null', () {
    expect(Camera.fromNative(null), isNull);
  });

  test('size', () {
    expect(sizeOf<aiCamera>(), equals(1080));
  });

  test('equals', () {
    final a = Camera.fromNative(allocate<aiCamera>());
    final b = Camera.fromNative(allocate<aiCamera>());
    expect(a, equals(a));
    expect(b, equals(b));
    expect(a, isNot(equals(b)));
    expect(b, isNot(equals(a)));
  });

  test('toString', () {
    expect(Camera.fromNative(allocate<aiCamera>()).toString(), matches(r'Camera\(Pointer<aiCamera>: address=0x[0-f]+\)'));
  });

  test('3mf', () {
    testScene('box.3mf', (scene) {
      final cameras = scene.cameras;
      expect(cameras, isEmpty);
      expect(cameras.length, isZero);
    });
    testScene('spider.3mf', (scene) {
      final cameras = scene.cameras;
      expect(cameras, isEmpty);
      expect(cameras.length, isZero);
    });
  });

  test('fbx', () {
    testScene('huesitos.fbx', (scene) {
      final cameras = scene.cameras;
      expect(cameras, isNotEmpty);
      expect(cameras.length, equals(1));
      final camera_0 = cameras.elementAt(0);
      expect(camera_0.name, equals('Camera'));
      expect(camera_0.position, vector3MoreOrLessEquals(Vector3(0, 0, 0)));
      expect(camera_0.up, vector3MoreOrLessEquals(Vector3(0, 1, 0)));
      expect(camera_0.lookAt, vector3MoreOrLessEquals(Vector3(1, 0, 0)));
      expect(camera_0.horizontalFov, moreOrLessEquals(0.857556045));
      expect(camera_0.clipPlaneNear, moreOrLessEquals(10));
      expect(camera_0.clipPlaneFar, moreOrLessEquals(10000));
      expect(camera_0.aspect, moreOrLessEquals(1.33333337));
    });
  });

  test('collada', () {
    testScene('anims.dae', (scene) {
      final cameras = scene.cameras;
      expect(cameras, isEmpty);
      expect(cameras.length, isZero);
    });
    testScene('lib.dae', (scene) {
      final cameras = scene.cameras;
      expect(cameras, isEmpty);
      expect(cameras.length, isZero);
    });
  });

  test('obj', () {
    testScene('spider.obj', (scene) {
      final cameras = scene.cameras;
      expect(cameras, isEmpty);
      expect(cameras.length, isZero);
    });
  });

}
