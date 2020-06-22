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
    expect(Node.fromNative(null), isNull);
  });

  test('size', () {
    expect(sizeOf<aiNode>(), equals(1144));
  });

  test('equals', () {
    final a = Node.fromNative(allocate<aiNode>());
    final b = Node.fromNative(allocate<aiNode>());
    expect(a, equals(a));
    expect(b, equals(b));
    expect(a, isNot(equals(b)));
    expect(b, isNot(equals(a)));
  });

  test('toString', () {
    expect(Node.fromNative(allocate<aiNode>()).toString(), matches(r'Node\(Pointer<aiNode>: address=0x[0-f]+\)'));
  });

  test('3mf', () {
    testScene('3mf/box.3mf', (scene) {
      final rootNode = scene.rootNode;
      expect(rootNode, isNotNull);
      expect(rootNode.name, equals('3MF'));
      expect(rootNode.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(1));
      final child_0 = rootNode.children.elementAt(0);
      expect(child_0.name, isEmpty);
      expect(child_0.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_0.parent, isNotNull);
      expect(child_0.children.length, isZero);
      expect(child_0.meshes, equals([0]));
      expect(child_0.metaData, isNull);
      expect(rootNode.meshes, equals([]));
      expect(rootNode.metaData, isNull);
    });

    testScene('3mf/spider.3mf', (scene) {
      final rootNode = scene.rootNode;
      expect(rootNode, isNotNull);
      expect(rootNode.name, equals('3MF'));
      expect(rootNode.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(19));
      final child_0 = rootNode.children.elementAt(0);
      expect(child_0.name, equals('HLeib01'));
      expect(child_0.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_0.parent, isNotNull);
      expect(child_0.children.length, isZero);
      expect(child_0.meshes, equals([0]));
      expect(child_0.metaData, isNull);
      final child_1 = rootNode.children.elementAt(1);
      expect(child_1.name, equals('OK'));
      expect(child_1.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_1.parent, isNotNull);
      expect(child_1.children.length, isZero);
      expect(child_1.meshes, equals([1]));
      expect(child_1.metaData, isNull);
      final child_2 = rootNode.children.elementAt(2);
      expect(child_2.name, equals('Bein1Li'));
      expect(child_2.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_2.parent, isNotNull);
      expect(child_2.children.length, isZero);
      expect(child_2.meshes, equals([2]));
      expect(child_2.metaData, isNull);
      final child_3 = rootNode.children.elementAt(3);
      expect(child_3.name, equals('Bein1Re'));
      expect(child_3.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_3.parent, isNotNull);
      expect(child_3.children.length, isZero);
      expect(child_3.meshes, equals([3]));
      expect(child_3.metaData, isNull);
      final child_4 = rootNode.children.elementAt(4);
      expect(child_4.name, equals('Bein2Li'));
      expect(child_4.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_4.parent, isNotNull);
      expect(child_4.children.length, isZero);
      expect(child_4.meshes, equals([4]));
      expect(child_4.metaData, isNull);
      final child_5 = rootNode.children.elementAt(5);
      expect(child_5.name, equals('Bein2Re'));
      expect(child_5.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_5.parent, isNotNull);
      expect(child_5.children.length, isZero);
      expect(child_5.meshes, equals([5]));
      expect(child_5.metaData, isNull);
      final child_6 = rootNode.children.elementAt(6);
      expect(child_6.name, equals('Bein3Re'));
      expect(child_6.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_6.parent, isNotNull);
      expect(child_6.children.length, isZero);
      expect(child_6.meshes, equals([6]));
      expect(child_6.metaData, isNull);
      final child_7 = rootNode.children.elementAt(7);
      expect(child_7.name, equals('Bein3Li'));
      expect(child_7.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_7.parent, isNotNull);
      expect(child_7.children.length, isZero);
      expect(child_7.meshes, equals([7]));
      expect(child_7.metaData, isNull);
      final child_8 = rootNode.children.elementAt(8);
      expect(child_8.name, equals('Bein4Re'));
      expect(child_8.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_8.parent, isNotNull);
      expect(child_8.children.length, isZero);
      expect(child_8.meshes, equals([8]));
      expect(child_8.metaData, isNull);
      final child_9 = rootNode.children.elementAt(9);
      expect(child_9.name, equals('Bein4Li'));
      expect(child_9.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_9.parent, isNotNull);
      expect(child_9.children.length, isZero);
      expect(child_9.meshes, equals([9]));
      expect(child_9.metaData, isNull);
      final child_10 = rootNode.children.elementAt(10);
      expect(child_10.name, equals('Zahn'));
      expect(child_10.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_10.parent, isNotNull);
      expect(child_10.children.length, isZero);
      expect(child_10.meshes, equals([10]));
      expect(child_10.metaData, isNull);
      final child_11 = rootNode.children.elementAt(11);
      expect(child_11.name, equals('klZahn'));
      expect(child_11.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_11.parent, isNotNull);
      expect(child_11.children.length, isZero);
      expect(child_11.meshes, equals([11]));
      expect(child_11.metaData, isNull);
      final child_12 = rootNode.children.elementAt(12);
      expect(child_12.name, equals('Kopf'));
      expect(child_12.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_12.parent, isNotNull);
      expect(child_12.children.length, isZero);
      expect(child_12.meshes, equals([12]));
      expect(child_12.metaData, isNull);
      final child_13 = rootNode.children.elementAt(13);
      expect(child_13.name, equals('Brust'));
      expect(child_13.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_13.parent, isNotNull);
      expect(child_13.children.length, isZero);
      expect(child_13.meshes, equals([13]));
      expect(child_13.metaData, isNull);
      final child_14 = rootNode.children.elementAt(14);
      expect(child_14.name, equals('Kopf2'));
      expect(child_14.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_14.parent, isNotNull);
      expect(child_14.children.length, isZero);
      expect(child_14.meshes, equals([14]));
      expect(child_14.metaData, isNull);
      final child_15 = rootNode.children.elementAt(15);
      expect(child_15.name, equals('Zahn2'));
      expect(child_15.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_15.parent, isNotNull);
      expect(child_15.children.length, isZero);
      expect(child_15.meshes, equals([15]));
      expect(child_15.metaData, isNull);
      final child_16 = rootNode.children.elementAt(16);
      expect(child_16.name, equals('klZahn2'));
      expect(child_16.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_16.parent, isNotNull);
      expect(child_16.children.length, isZero);
      expect(child_16.meshes, equals([16]));
      expect(child_16.metaData, isNull);
      final child_17 = rootNode.children.elementAt(17);
      expect(child_17.name, equals('Auge'));
      expect(child_17.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_17.parent, isNotNull);
      expect(child_17.children.length, isZero);
      expect(child_17.meshes, equals([17]));
      expect(child_17.metaData, isNull);
      final child_18 = rootNode.children.elementAt(18);
      expect(child_18.name, equals('Duplicate05'));
      expect(child_18.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_18.parent, isNotNull);
      expect(child_18.children.length, isZero);
      expect(child_18.meshes, equals([18]));
      expect(child_18.metaData, isNull);
      expect(rootNode.meshes, equals([]));
      expect(rootNode.metaData, isNull);
    });

  });

  test('fbx', () {
    testScene('fbx/huesitos.fbx', (scene) {
      final rootNode = scene.rootNode;
      expect(rootNode, isNotNull);
      expect(rootNode.name, equals('RootNode'));
      expect(rootNode.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(4));
      final child_0 = rootNode.children.elementAt(0);
      expect(child_0.name, equals('Armature'));
      expect(child_0.transformation, matrix4MoreOrLessEquals(Matrix4(100, 0, 0, -4.02399921, 0, -4.37113886e-06, 100, 0, 0, -100, -4.37113886e-06, -307.135376, 0, 0, 0, 1)));
      expect(child_0.parent, isNotNull);
      expect(child_0.children.length, equals(1));
      expect(child_0.meshes, equals([]));
      expect(child_0.metaData, isNotNull);
      final child_1 = rootNode.children.elementAt(1);
      expect(child_1.name, equals('Cylinder'));
      expect(child_1.transformation, matrix4MoreOrLessEquals(Matrix4(100, 0, 0, -3.49912572, 0, -4.37113795e-06, 100, 125.968384, 0, -99.9999847, -4.37113886e-06, -309.672211, 0, 0, 0, 1)));
      expect(child_1.parent, isNotNull);
      expect(child_1.children.length, isZero);
      expect(child_1.meshes, equals([0]));
      expect(child_1.metaData, isNotNull);
      final child_2 = rootNode.children.elementAt(2);
      expect(child_2.name, equals('Lamp'));
      expect(child_2.transformation, matrix4MoreOrLessEquals(Matrix4(-29.0864677, 56.6393127, 77.1100998, 471.644867, -5.51890373, 79.4672394, -60.4524689, 348.613586, -95.5171204, -21.8391151, -19.9883385, 400.881958, 0, 0, 0, 1)));
      expect(child_2.parent, isNotNull);
      expect(child_2.children.length, isZero);
      expect(child_2.meshes, equals([]));
      expect(child_2.metaData, isNotNull);
      final child_3 = rootNode.children.elementAt(3);
      expect(child_3.name, equals('Camera'));
      expect(child_3.transformation, matrix4MoreOrLessEquals(Matrix4(-65.4861755, -31.7370052, 68.5880737, 748.113159, -44.5245361, 89.5343323, -1.08167827, 534.366516, -61.0665741, -31.24687, -72.7633591, 650.763977, 0, 0, 0, 1)));
      expect(child_3.parent, isNotNull);
      expect(child_3.children.length, isZero);
      expect(child_3.meshes, equals([]));
      expect(child_3.metaData, isNotNull);
      expect(rootNode.meshes, equals([]));
      expect(rootNode.metaData, isNull);
    });

  });

  test('obj', () {
    testScene('Obj/Spider/spider.obj', (scene) {
      final rootNode = scene.rootNode;
      expect(rootNode, isNotNull);
      expect(rootNode.name, equals('spider.obj'));
      expect(rootNode.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(rootNode.parent, isNull);
      expect(rootNode.children.length, equals(19));
      final child_0 = rootNode.children.elementAt(0);
      expect(child_0.name, equals('HLeib01'));
      expect(child_0.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_0.parent, isNotNull);
      expect(child_0.children.length, isZero);
      expect(child_0.meshes, equals([0]));
      expect(child_0.metaData, isNull);
      final child_1 = rootNode.children.elementAt(1);
      expect(child_1.name, equals('OK'));
      expect(child_1.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_1.parent, isNotNull);
      expect(child_1.children.length, isZero);
      expect(child_1.meshes, equals([1]));
      expect(child_1.metaData, isNull);
      final child_2 = rootNode.children.elementAt(2);
      expect(child_2.name, equals('Bein1Li'));
      expect(child_2.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_2.parent, isNotNull);
      expect(child_2.children.length, isZero);
      expect(child_2.meshes, equals([2]));
      expect(child_2.metaData, isNull);
      final child_3 = rootNode.children.elementAt(3);
      expect(child_3.name, equals('Bein1Re'));
      expect(child_3.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_3.parent, isNotNull);
      expect(child_3.children.length, isZero);
      expect(child_3.meshes, equals([3]));
      expect(child_3.metaData, isNull);
      final child_4 = rootNode.children.elementAt(4);
      expect(child_4.name, equals('Bein2Li'));
      expect(child_4.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_4.parent, isNotNull);
      expect(child_4.children.length, isZero);
      expect(child_4.meshes, equals([4]));
      expect(child_4.metaData, isNull);
      final child_5 = rootNode.children.elementAt(5);
      expect(child_5.name, equals('Bein2Re'));
      expect(child_5.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_5.parent, isNotNull);
      expect(child_5.children.length, isZero);
      expect(child_5.meshes, equals([5]));
      expect(child_5.metaData, isNull);
      final child_6 = rootNode.children.elementAt(6);
      expect(child_6.name, equals('Bein3Re'));
      expect(child_6.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_6.parent, isNotNull);
      expect(child_6.children.length, isZero);
      expect(child_6.meshes, equals([6]));
      expect(child_6.metaData, isNull);
      final child_7 = rootNode.children.elementAt(7);
      expect(child_7.name, equals('Bein3Li'));
      expect(child_7.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_7.parent, isNotNull);
      expect(child_7.children.length, isZero);
      expect(child_7.meshes, equals([7]));
      expect(child_7.metaData, isNull);
      final child_8 = rootNode.children.elementAt(8);
      expect(child_8.name, equals('Bein4Re'));
      expect(child_8.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_8.parent, isNotNull);
      expect(child_8.children.length, isZero);
      expect(child_8.meshes, equals([8]));
      expect(child_8.metaData, isNull);
      final child_9 = rootNode.children.elementAt(9);
      expect(child_9.name, equals('Bein4Li'));
      expect(child_9.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_9.parent, isNotNull);
      expect(child_9.children.length, isZero);
      expect(child_9.meshes, equals([9]));
      expect(child_9.metaData, isNull);
      final child_10 = rootNode.children.elementAt(10);
      expect(child_10.name, equals('Zahn'));
      expect(child_10.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_10.parent, isNotNull);
      expect(child_10.children.length, isZero);
      expect(child_10.meshes, equals([10]));
      expect(child_10.metaData, isNull);
      final child_11 = rootNode.children.elementAt(11);
      expect(child_11.name, equals('klZahn'));
      expect(child_11.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_11.parent, isNotNull);
      expect(child_11.children.length, isZero);
      expect(child_11.meshes, equals([11]));
      expect(child_11.metaData, isNull);
      final child_12 = rootNode.children.elementAt(12);
      expect(child_12.name, equals('Kopf'));
      expect(child_12.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_12.parent, isNotNull);
      expect(child_12.children.length, isZero);
      expect(child_12.meshes, equals([12]));
      expect(child_12.metaData, isNull);
      final child_13 = rootNode.children.elementAt(13);
      expect(child_13.name, equals('Brust'));
      expect(child_13.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_13.parent, isNotNull);
      expect(child_13.children.length, isZero);
      expect(child_13.meshes, equals([13]));
      expect(child_13.metaData, isNull);
      final child_14 = rootNode.children.elementAt(14);
      expect(child_14.name, equals('Kopf2'));
      expect(child_14.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_14.parent, isNotNull);
      expect(child_14.children.length, isZero);
      expect(child_14.meshes, equals([14]));
      expect(child_14.metaData, isNull);
      final child_15 = rootNode.children.elementAt(15);
      expect(child_15.name, equals('Zahn2'));
      expect(child_15.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_15.parent, isNotNull);
      expect(child_15.children.length, isZero);
      expect(child_15.meshes, equals([15]));
      expect(child_15.metaData, isNull);
      final child_16 = rootNode.children.elementAt(16);
      expect(child_16.name, equals('klZahn2'));
      expect(child_16.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_16.parent, isNotNull);
      expect(child_16.children.length, isZero);
      expect(child_16.meshes, equals([16]));
      expect(child_16.metaData, isNull);
      final child_17 = rootNode.children.elementAt(17);
      expect(child_17.name, equals('Auge'));
      expect(child_17.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_17.parent, isNotNull);
      expect(child_17.children.length, isZero);
      expect(child_17.meshes, equals([17]));
      expect(child_17.metaData, isNull);
      final child_18 = rootNode.children.elementAt(18);
      expect(child_18.name, equals('Duplicate05'));
      expect(child_18.transformation, matrix4MoreOrLessEquals(Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)));
      expect(child_18.parent, isNotNull);
      expect(child_18.children.length, isZero);
      expect(child_18.meshes, equals([18]));
      expect(child_18.metaData, isNull);
      expect(rootNode.meshes, equals([]));
      expect(rootNode.metaData, isNull);
    });

  });

}
