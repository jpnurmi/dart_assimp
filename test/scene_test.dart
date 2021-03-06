import 'dart:ffi';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:assimp/assimp.dart';
import 'package:assimp/src/bindings.dart';
import 'test_utils.dart';

// DO NOT EDIT (generated by tool/testgen)

void main() {
  prepareTest();

  test('size', () {
    expect(sizeOf<aiScene>(), equals(128));
  });

  test('equals', () {
    final a = Scene.fromNative(calloc<aiScene>());
    final b = Scene.fromNative(calloc<aiScene>());
    expect(a, equals(a));
    expect(b, equals(b));
    expect(a, isNot(equals(b)));
    expect(b, isNot(equals(a)));
  });

  test('toString', () {
    expect(Scene.fromNative(calloc<aiScene>()).toString(), matches(r'Scene\(Pointer<aiScene>: address=0x[0-f]+\)'));
  });

  test('3mf', () {
    testScene('box.3mf', (scene) {
      expect(scene, isNotNull);
      expect(scene.flags, isZero);
      expect(scene.rootNode, isNotNull);
      expect(scene.meshes.length, equals(1));
      expect(scene.materials.length, equals(1));
      expect(scene.animations.length, isZero);
      expect(scene.textures.length, isZero);
      expect(scene.lights.length, isZero);
      expect(scene.cameras.length, isZero);
      expect(scene.metaData, isNull);
    });
    testScene('spider.3mf', (scene) {
      expect(scene, isNotNull);
      expect(scene.flags, isZero);
      expect(scene.rootNode, isNotNull);
      expect(scene.meshes.length, equals(19));
      expect(scene.materials.length, equals(4));
      expect(scene.animations.length, isZero);
      expect(scene.textures.length, isZero);
      expect(scene.lights.length, isZero);
      expect(scene.cameras.length, isZero);
      expect(scene.metaData, isNull);
    });
  });

  test('fbx', () {
    testScene('huesitos.fbx', (scene) {
      expect(scene, isNotNull);
      expect(scene.flags, isZero);
      expect(scene.rootNode, isNotNull);
      expect(scene.meshes.length, equals(1));
      expect(scene.materials.length, equals(1));
      expect(scene.animations.length, equals(1));
      expect(scene.textures.length, isZero);
      expect(scene.lights.length, equals(1));
      expect(scene.cameras.length, equals(1));
      expect(scene.metaData, isNotNull);
    });
  });

  test('collada', () {
    testScene('anims.dae', (scene) {
      expect(scene, isNotNull);
      expect(scene.flags, isZero);
      expect(scene.rootNode, isNotNull);
      expect(scene.meshes.length, equals(64));
      expect(scene.materials.length, equals(1));
      expect(scene.animations.length, equals(1));
      expect(scene.textures.length, isZero);
      expect(scene.lights.length, isZero);
      expect(scene.cameras.length, isZero);
      expect(scene.metaData, isNotNull);
    });
    testScene('lib.dae', (scene) {
      expect(scene, isNotNull);
      expect(scene.flags, isZero);
      expect(scene.rootNode, isNotNull);
      expect(scene.meshes.length, equals(1));
      expect(scene.materials.length, equals(1));
      expect(scene.animations.length, equals(2));
      expect(scene.textures.length, isZero);
      expect(scene.lights.length, isZero);
      expect(scene.cameras.length, isZero);
      expect(scene.metaData, isNotNull);
    });
  });

  test('obj', () {
    testScene('spider.obj', (scene) {
      expect(scene, isNotNull);
      expect(scene.flags, isZero);
      expect(scene.rootNode, isNotNull);
      expect(scene.meshes.length, equals(19));
      expect(scene.materials.length, equals(6));
      expect(scene.animations.length, isZero);
      expect(scene.textures.length, isZero);
      expect(scene.lights.length, isZero);
      expect(scene.cameras.length, isZero);
      expect(scene.metaData, isNull);
    });
  });

}
