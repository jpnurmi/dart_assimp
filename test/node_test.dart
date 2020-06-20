import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:assimp/assimp.dart';
import '../lib/src/bindings.dart';
import 'test_utils.dart';

// DO NOT EDIT (generated by tool/testgen)

void main() {
  test('size', () {
    expect(sizeOf<aiNode>(), equals(1144));
  });

  test('null', () {
    testNodes(null, (node) {
      expect(node.isNull, isTrue);
      expect(node.name, isNull);
      expect(node.transformation, isNull);
      expect(node.parent, isNull);
      expect(node.children, isEmpty);
      expect(node.meshes, isEmpty);
      expect(node.metaData, isNull);
    });
  });

  test('3mf', () {
    testNodes('3mf/box.3mf', (rootNode) {
      expect(rootNode.name, equals('3MF'));
      expect(rootNode.transformation,
          equals(Matrix4(1, 0, 0, 0, 0 ,1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(1));
      expect(rootNode.meshes.length, isZero);
      expect(rootNode.metaData, isNull);
    });

    testNodes('3mf/spider.3mf', (rootNode) {
      expect(rootNode.name, equals('3MF'));
      expect(rootNode.transformation,
          equals(Matrix4(1, 0, 0, 0, 0 ,1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(19));
      expect(rootNode.meshes.length, isZero);
      expect(rootNode.metaData, isNull);
    });

  });

  test('fbx', () {
    testNodes('fbx/huesitos.fbx', (rootNode) {
      expect(rootNode.name, equals('RootNode'));
      expect(rootNode.transformation,
          equals(Matrix4(1, 0, 0, 0, 0 ,1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(4));
      expect(rootNode.meshes.length, isZero);
      expect(rootNode.metaData, isNull);
    });

  });

  test('obj', () {
    testNodes('Obj/Spider/spider.obj', (rootNode) {
      expect(rootNode.name, equals('spider.obj'));
      expect(rootNode.transformation,
          equals(Matrix4(1, 0, 0, 0, 0 ,1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(19));
      expect(rootNode.meshes.length, isZero);
      expect(rootNode.metaData, isNull);
    });

  });

}
