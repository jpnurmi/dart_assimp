/*
---------------------------------------------------------------------------
Open Asset Import Library (assimp)
---------------------------------------------------------------------------

Copyright (c) 2006-2020, assimp team

All rights reserved.

Redistribution and use of this software in source and binary forms,
with or without modification, are permitted provided that the following
conditions are met:

* Redistributions of source code must retain the above
copyright notice, this list of conditions and the
following disclaimer.

* Redistributions in binary form must reproduce the above
copyright notice, this list of conditions and the
following disclaimer in the documentation and/or other
materials provided with the distribution.

* Neither the name of the assimp team, nor the names of its
contributors may be used to endorse or promote products
derived from this software without specific prior
written permission of the assimp team.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
---------------------------------------------------------------------------
*/

import 'package:test/test.dart';
import 'package:assimp/assimp.dart';
import 'test_utils.dart';

void main() {
  test('null', () {
    Mesh mesh = Mesh.fromNative(null);
    expect(mesh.isNull, isTrue);
    expect(mesh.primitiveTypes, isZero);
    expect(mesh.vertices, isEmpty);
    expect(mesh.normals, isEmpty);
    expect(mesh.tangents, isEmpty);
    expect(mesh.bitangents, isEmpty);
    expect(mesh.colors, isEmpty);
    expect(mesh.textureCoords, isEmpty);
    expect(mesh.uvComponents, isEmpty);
    expect(mesh.faces, isEmpty);
    expect(mesh.bones, isEmpty);
    expect(mesh.materialIndex, isZero);
    expect(mesh.name, isNull);
    expect(mesh.animMeshes, isEmpty);
    expect(mesh.morphingMethod, isZero);
    expect(mesh.aabb, isNull);
  });

  void testMeshes(String fileName, void tester(meshes)) {
    final filePath = testFilePath(fileName);
    final scene = Scene.fromFile(filePath);
    tester(scene.meshes);
    scene.dispose();
  }

  test('3mf', () {
    testMeshes('3mf/box.3mf', (meshes) {
      expect(meshes.length, equals(1));
      expect(meshes.elementAt(0).primitiveTypes, isZero);
      expect(meshes.elementAt(0).vertices.length, equals(8));
      expect(meshes.elementAt(0).normals.length, equals(8));
      expect(meshes.elementAt(0).tangents.length, equals(8));
      expect(meshes.elementAt(0).bitangents.length, equals(8));
      expect(meshes.elementAt(0).colors.length, isZero);
      expect(meshes.elementAt(0).textureCoords.length, isZero);
      expect(meshes.elementAt(0).uvComponents.length, isZero);
      expect(meshes.elementAt(0).faces.length, isZero);
      expect(meshes.elementAt(0).bones.length, isZero);
      expect(meshes.elementAt(0).materialIndex, isZero);
      expect(meshes.elementAt(0).name, isNull);
      expect(meshes.elementAt(0).animMeshes.length, isZero);
      expect(meshes.elementAt(0).morphingMethod, isZero);
      expect(meshes.elementAt(0).aabb, isNull);
    });

    testMeshes('3mf/spider.3mf', (meshes) {
      expect(meshes.length, equals(19));
      expect(meshes.elementAt(0).primitiveTypes, equals(4));
      expect(meshes.elementAt(0).vertices.length, equals(71));
      expect(meshes.elementAt(0).normals.length, equals(71));
      expect(meshes.elementAt(0).tangents.length, equals(71));
      expect(meshes.elementAt(0).bitangents.length, equals(71));
      expect(meshes.elementAt(0).colors.length, isZero);
      expect(meshes.elementAt(0).textureCoords.length, isZero);
      expect(meshes.elementAt(0).uvComponents.length, isZero);
      expect(meshes.elementAt(0).faces.length, equals(80));
      expect(meshes.elementAt(0).bones.length, isZero);
      expect(meshes.elementAt(0).materialIndex, equals(1));
      expect(meshes.elementAt(0).name, equals('HLeib01'));
      expect(meshes.elementAt(0).animMeshes.length, isZero);
      expect(meshes.elementAt(0).morphingMethod, isZero);
      expect(meshes.elementAt(0).aabb, isNull);

      expect(meshes.elementAt(1).primitiveTypes, equals(4));
      expect(meshes.elementAt(1).vertices.length, equals(93));
      expect(meshes.elementAt(1).normals.length, equals(93));
      expect(meshes.elementAt(1).tangents.length, equals(93));
      expect(meshes.elementAt(1).bitangents.length, equals(93));
      expect(meshes.elementAt(1).colors.length, isZero);
      expect(meshes.elementAt(1).textureCoords.length, isZero);
      expect(meshes.elementAt(1).uvComponents.length, isZero);
      expect(meshes.elementAt(1).faces.length, equals(60));
      expect(meshes.elementAt(1).bones.length, isZero);
      expect(meshes.elementAt(1).materialIndex, isZero);
      expect(meshes.elementAt(1).name, equals('OK'));
      expect(meshes.elementAt(1).animMeshes.length, isZero);
      expect(meshes.elementAt(1).morphingMethod, isZero);
      expect(meshes.elementAt(1).aabb, isNull);

      expect(meshes.elementAt(2).primitiveTypes, equals(4));
      expect(meshes.elementAt(2).vertices.length, equals(111));
      expect(meshes.elementAt(2).normals.length, equals(111));
      expect(meshes.elementAt(2).tangents.length, equals(111));
      expect(meshes.elementAt(2).bitangents.length, equals(111));
      expect(meshes.elementAt(2).colors.length, isZero);
      expect(meshes.elementAt(2).textureCoords.length, isZero);
      expect(meshes.elementAt(2).uvComponents.length, isZero);
      expect(meshes.elementAt(2).faces.length, equals(98));
      expect(meshes.elementAt(2).bones.length, isZero);
      expect(meshes.elementAt(2).materialIndex, equals(2));
      expect(meshes.elementAt(2).name, equals('Bein1Li'));
      expect(meshes.elementAt(2).animMeshes.length, isZero);
      expect(meshes.elementAt(2).morphingMethod, isZero);
      expect(meshes.elementAt(2).aabb, isNull);

      expect(meshes.elementAt(3).primitiveTypes, equals(4));
      expect(meshes.elementAt(3).vertices.length, equals(117));
      expect(meshes.elementAt(3).normals.length, equals(117));
      expect(meshes.elementAt(3).tangents.length, equals(117));
      expect(meshes.elementAt(3).bitangents.length, equals(117));
      expect(meshes.elementAt(3).colors.length, isZero);
      expect(meshes.elementAt(3).textureCoords.length, isZero);
      expect(meshes.elementAt(3).uvComponents.length, isZero);
      expect(meshes.elementAt(3).faces.length, equals(98));
      expect(meshes.elementAt(3).bones.length, isZero);
      expect(meshes.elementAt(3).materialIndex, equals(2));
      expect(meshes.elementAt(3).name, equals('Bein1Re'));
      expect(meshes.elementAt(3).animMeshes.length, isZero);
      expect(meshes.elementAt(3).morphingMethod, isZero);
      expect(meshes.elementAt(3).aabb, isNull);

      expect(meshes.elementAt(4).primitiveTypes, equals(4));
      expect(meshes.elementAt(4).vertices.length, equals(113));
      expect(meshes.elementAt(4).normals.length, equals(113));
      expect(meshes.elementAt(4).tangents.length, equals(113));
      expect(meshes.elementAt(4).bitangents.length, equals(113));
      expect(meshes.elementAt(4).colors.length, isZero);
      expect(meshes.elementAt(4).textureCoords.length, isZero);
      expect(meshes.elementAt(4).uvComponents.length, isZero);
      expect(meshes.elementAt(4).faces.length, equals(98));
      expect(meshes.elementAt(4).bones.length, isZero);
      expect(meshes.elementAt(4).materialIndex, equals(2));
      expect(meshes.elementAt(4).name, equals('Bein2Li'));
      expect(meshes.elementAt(4).animMeshes.length, isZero);
      expect(meshes.elementAt(4).morphingMethod, isZero);
      expect(meshes.elementAt(4).aabb, isNull);

      expect(meshes.elementAt(5).primitiveTypes, equals(4));
      expect(meshes.elementAt(5).vertices.length, equals(115));
      expect(meshes.elementAt(5).normals.length, equals(115));
      expect(meshes.elementAt(5).tangents.length, equals(115));
      expect(meshes.elementAt(5).bitangents.length, equals(115));
      expect(meshes.elementAt(5).colors.length, isZero);
      expect(meshes.elementAt(5).textureCoords.length, isZero);
      expect(meshes.elementAt(5).uvComponents.length, isZero);
      expect(meshes.elementAt(5).faces.length, equals(98));
      expect(meshes.elementAt(5).bones.length, isZero);
      expect(meshes.elementAt(5).materialIndex, equals(2));
      expect(meshes.elementAt(5).name, equals('Bein2Re'));
      expect(meshes.elementAt(5).animMeshes.length, isZero);
      expect(meshes.elementAt(5).morphingMethod, isZero);
      expect(meshes.elementAt(5).aabb, isNull);

      expect(meshes.elementAt(6).primitiveTypes, equals(4));
      expect(meshes.elementAt(6).vertices.length, equals(107));
      expect(meshes.elementAt(6).normals.length, equals(107));
      expect(meshes.elementAt(6).tangents.length, equals(107));
      expect(meshes.elementAt(6).bitangents.length, equals(107));
      expect(meshes.elementAt(6).colors.length, isZero);
      expect(meshes.elementAt(6).textureCoords.length, isZero);
      expect(meshes.elementAt(6).uvComponents.length, isZero);
      expect(meshes.elementAt(6).faces.length, equals(98));
      expect(meshes.elementAt(6).bones.length, isZero);
      expect(meshes.elementAt(6).materialIndex, equals(2));
      expect(meshes.elementAt(6).name, equals('Bein3Re'));
      expect(meshes.elementAt(6).animMeshes.length, isZero);
      expect(meshes.elementAt(6).morphingMethod, isZero);
      expect(meshes.elementAt(6).aabb, isNull);

      expect(meshes.elementAt(7).primitiveTypes, equals(4));
      expect(meshes.elementAt(7).vertices.length, equals(107));
      expect(meshes.elementAt(7).normals.length, equals(107));
      expect(meshes.elementAt(7).tangents.length, equals(107));
      expect(meshes.elementAt(7).bitangents.length, equals(107));
      expect(meshes.elementAt(7).colors.length, isZero);
      expect(meshes.elementAt(7).textureCoords.length, isZero);
      expect(meshes.elementAt(7).uvComponents.length, isZero);
      expect(meshes.elementAt(7).faces.length, equals(98));
      expect(meshes.elementAt(7).bones.length, isZero);
      expect(meshes.elementAt(7).materialIndex, equals(2));
      expect(meshes.elementAt(7).name, equals('Bein3Li'));
      expect(meshes.elementAt(7).animMeshes.length, isZero);
      expect(meshes.elementAt(7).morphingMethod, isZero);
      expect(meshes.elementAt(7).aabb, isNull);

      expect(meshes.elementAt(8).primitiveTypes, equals(4));
      expect(meshes.elementAt(8).vertices.length, equals(113));
      expect(meshes.elementAt(8).normals.length, equals(113));
      expect(meshes.elementAt(8).tangents.length, equals(113));
      expect(meshes.elementAt(8).bitangents.length, equals(113));
      expect(meshes.elementAt(8).colors.length, isZero);
      expect(meshes.elementAt(8).textureCoords.length, isZero);
      expect(meshes.elementAt(8).uvComponents.length, isZero);
      expect(meshes.elementAt(8).faces.length, equals(98));
      expect(meshes.elementAt(8).bones.length, isZero);
      expect(meshes.elementAt(8).materialIndex, equals(2));
      expect(meshes.elementAt(8).name, equals('Bein4Re'));
      expect(meshes.elementAt(8).animMeshes.length, isZero);
      expect(meshes.elementAt(8).morphingMethod, isZero);
      expect(meshes.elementAt(8).aabb, isNull);

      expect(meshes.elementAt(9).primitiveTypes, equals(4));
      expect(meshes.elementAt(9).vertices.length, equals(113));
      expect(meshes.elementAt(9).normals.length, equals(113));
      expect(meshes.elementAt(9).tangents.length, equals(113));
      expect(meshes.elementAt(9).bitangents.length, equals(113));
      expect(meshes.elementAt(9).colors.length, isZero);
      expect(meshes.elementAt(9).textureCoords.length, isZero);
      expect(meshes.elementAt(9).uvComponents.length, isZero);
      expect(meshes.elementAt(9).faces.length, equals(98));
      expect(meshes.elementAt(9).bones.length, isZero);
      expect(meshes.elementAt(9).materialIndex, equals(2));
      expect(meshes.elementAt(9).name, equals('Bein4Li'));
      expect(meshes.elementAt(9).animMeshes.length, isZero);
      expect(meshes.elementAt(9).morphingMethod, isZero);
      expect(meshes.elementAt(9).aabb, isNull);

      expect(meshes.elementAt(10).primitiveTypes, equals(4));
      expect(meshes.elementAt(10).vertices.length, equals(42));
      expect(meshes.elementAt(10).normals.length, equals(42));
      expect(meshes.elementAt(10).tangents.length, equals(42));
      expect(meshes.elementAt(10).bitangents.length, equals(42));
      expect(meshes.elementAt(10).colors.length, isZero);
      expect(meshes.elementAt(10).textureCoords.length, isZero);
      expect(meshes.elementAt(10).uvComponents.length, isZero);
      expect(meshes.elementAt(10).faces.length, equals(42));
      expect(meshes.elementAt(10).bones.length, isZero);
      expect(meshes.elementAt(10).materialIndex, equals(2));
      expect(meshes.elementAt(10).name, equals('Zahn'));
      expect(meshes.elementAt(10).animMeshes.length, isZero);
      expect(meshes.elementAt(10).morphingMethod, isZero);
      expect(meshes.elementAt(10).aabb, isNull);

      expect(meshes.elementAt(11).primitiveTypes, equals(4));
      expect(meshes.elementAt(11).vertices.length, equals(44));
      expect(meshes.elementAt(11).normals.length, equals(44));
      expect(meshes.elementAt(11).tangents.length, equals(44));
      expect(meshes.elementAt(11).bitangents.length, equals(44));
      expect(meshes.elementAt(11).colors.length, isZero);
      expect(meshes.elementAt(11).textureCoords.length, isZero);
      expect(meshes.elementAt(11).uvComponents.length, isZero);
      expect(meshes.elementAt(11).faces.length, equals(42));
      expect(meshes.elementAt(11).bones.length, isZero);
      expect(meshes.elementAt(11).materialIndex, equals(2));
      expect(meshes.elementAt(11).name, equals('klZahn'));
      expect(meshes.elementAt(11).animMeshes.length, isZero);
      expect(meshes.elementAt(11).morphingMethod, isZero);
      expect(meshes.elementAt(11).aabb, isNull);

      expect(meshes.elementAt(12).primitiveTypes, equals(4));
      expect(meshes.elementAt(12).vertices.length, equals(79));
      expect(meshes.elementAt(12).normals.length, equals(79));
      expect(meshes.elementAt(12).tangents.length, equals(79));
      expect(meshes.elementAt(12).bitangents.length, equals(79));
      expect(meshes.elementAt(12).colors.length, isZero);
      expect(meshes.elementAt(12).textureCoords.length, isZero);
      expect(meshes.elementAt(12).uvComponents.length, isZero);
      expect(meshes.elementAt(12).faces.length, equals(90));
      expect(meshes.elementAt(12).bones.length, isZero);
      expect(meshes.elementAt(12).materialIndex, isZero);
      expect(meshes.elementAt(12).name, equals('Kopf'));
      expect(meshes.elementAt(12).animMeshes.length, isZero);
      expect(meshes.elementAt(12).morphingMethod, isZero);
      expect(meshes.elementAt(12).aabb, isNull);

      expect(meshes.elementAt(13).primitiveTypes, equals(4));
      expect(meshes.elementAt(13).vertices.length, equals(17));
      expect(meshes.elementAt(13).normals.length, equals(17));
      expect(meshes.elementAt(13).tangents.length, equals(17));
      expect(meshes.elementAt(13).bitangents.length, equals(17));
      expect(meshes.elementAt(13).colors.length, isZero);
      expect(meshes.elementAt(13).textureCoords.length, isZero);
      expect(meshes.elementAt(13).uvComponents.length, isZero);
      expect(meshes.elementAt(13).faces.length, equals(20));
      expect(meshes.elementAt(13).bones.length, isZero);
      expect(meshes.elementAt(13).materialIndex, isZero);
      expect(meshes.elementAt(13).name, equals('Brust'));
      expect(meshes.elementAt(13).animMeshes.length, isZero);
      expect(meshes.elementAt(13).morphingMethod, isZero);
      expect(meshes.elementAt(13).aabb, isNull);

      expect(meshes.elementAt(14).primitiveTypes, equals(4));
      expect(meshes.elementAt(14).vertices.length, equals(79));
      expect(meshes.elementAt(14).normals.length, equals(79));
      expect(meshes.elementAt(14).tangents.length, equals(79));
      expect(meshes.elementAt(14).bitangents.length, equals(79));
      expect(meshes.elementAt(14).colors.length, isZero);
      expect(meshes.elementAt(14).textureCoords.length, isZero);
      expect(meshes.elementAt(14).uvComponents.length, isZero);
      expect(meshes.elementAt(14).faces.length, equals(90));
      expect(meshes.elementAt(14).bones.length, isZero);
      expect(meshes.elementAt(14).materialIndex, isZero);
      expect(meshes.elementAt(14).name, equals('Kopf2'));
      expect(meshes.elementAt(14).animMeshes.length, isZero);
      expect(meshes.elementAt(14).morphingMethod, isZero);
      expect(meshes.elementAt(14).aabb, isNull);

      expect(meshes.elementAt(15).primitiveTypes, equals(4));
      expect(meshes.elementAt(15).vertices.length, equals(42));
      expect(meshes.elementAt(15).normals.length, equals(42));
      expect(meshes.elementAt(15).tangents.length, equals(42));
      expect(meshes.elementAt(15).bitangents.length, equals(42));
      expect(meshes.elementAt(15).colors.length, isZero);
      expect(meshes.elementAt(15).textureCoords.length, isZero);
      expect(meshes.elementAt(15).uvComponents.length, isZero);
      expect(meshes.elementAt(15).faces.length, equals(42));
      expect(meshes.elementAt(15).bones.length, isZero);
      expect(meshes.elementAt(15).materialIndex, equals(2));
      expect(meshes.elementAt(15).name, equals('Zahn2'));
      expect(meshes.elementAt(15).animMeshes.length, isZero);
      expect(meshes.elementAt(15).morphingMethod, isZero);
      expect(meshes.elementAt(15).aabb, isNull);

      expect(meshes.elementAt(16).primitiveTypes, equals(4));
      expect(meshes.elementAt(16).vertices.length, equals(44));
      expect(meshes.elementAt(16).normals.length, equals(44));
      expect(meshes.elementAt(16).tangents.length, equals(44));
      expect(meshes.elementAt(16).bitangents.length, equals(44));
      expect(meshes.elementAt(16).colors.length, isZero);
      expect(meshes.elementAt(16).textureCoords.length, isZero);
      expect(meshes.elementAt(16).uvComponents.length, isZero);
      expect(meshes.elementAt(16).faces.length, equals(42));
      expect(meshes.elementAt(16).bones.length, isZero);
      expect(meshes.elementAt(16).materialIndex, equals(2));
      expect(meshes.elementAt(16).name, equals('klZahn2'));
      expect(meshes.elementAt(16).animMeshes.length, isZero);
      expect(meshes.elementAt(16).morphingMethod, isZero);
      expect(meshes.elementAt(16).aabb, isNull);

      expect(meshes.elementAt(17).primitiveTypes, equals(4));
      expect(meshes.elementAt(17).vertices.length, equals(36));
      expect(meshes.elementAt(17).normals.length, equals(36));
      expect(meshes.elementAt(17).tangents.length, equals(36));
      expect(meshes.elementAt(17).bitangents.length, equals(36));
      expect(meshes.elementAt(17).colors.length, isZero);
      expect(meshes.elementAt(17).textureCoords.length, isZero);
      expect(meshes.elementAt(17).uvComponents.length, isZero);
      expect(meshes.elementAt(17).faces.length, equals(38));
      expect(meshes.elementAt(17).bones.length, isZero);
      expect(meshes.elementAt(17).materialIndex, equals(3));
      expect(meshes.elementAt(17).name, equals('Auge'));
      expect(meshes.elementAt(17).animMeshes.length, isZero);
      expect(meshes.elementAt(17).morphingMethod, isZero);
      expect(meshes.elementAt(17).aabb, isNull);

      expect(meshes.elementAt(18).primitiveTypes, equals(4));
      expect(meshes.elementAt(18).vertices.length, equals(36));
      expect(meshes.elementAt(18).normals.length, equals(36));
      expect(meshes.elementAt(18).tangents.length, equals(36));
      expect(meshes.elementAt(18).bitangents.length, equals(36));
      expect(meshes.elementAt(18).colors.length, isZero);
      expect(meshes.elementAt(18).textureCoords.length, isZero);
      expect(meshes.elementAt(18).uvComponents.length, isZero);
      expect(meshes.elementAt(18).faces.length, equals(38));
      expect(meshes.elementAt(18).bones.length, isZero);
      expect(meshes.elementAt(18).materialIndex, equals(3));
      expect(meshes.elementAt(18).name, equals('Duplicate05'));
      expect(meshes.elementAt(18).animMeshes.length, isZero);
      expect(meshes.elementAt(18).morphingMethod, isZero);
      expect(meshes.elementAt(18).aabb, isNull);
    });
  });

  test('fbx', () {
    testMeshes('fbx/huesitos.fbx', (meshes) {
      expect(meshes.length, equals(1));
      expect(meshes.elementAt(0).primitiveTypes, equals(12));
      expect(meshes.elementAt(0).vertices.length, equals(256));
      expect(meshes.elementAt(0).normals.length, equals(256));
      expect(meshes.elementAt(0).tangents.length, equals(256));
      expect(meshes.elementAt(0).bitangents.length, equals(256));
      expect(meshes.elementAt(0).colors.length, isZero);
      expect(meshes.elementAt(0).textureCoords.length, equals(1));
      expect(meshes.elementAt(0).uvComponents.length, equals(1));
      expect(meshes.elementAt(0).faces.length, equals(68));
      expect(meshes.elementAt(0).bones.length, equals(9));
      expect(meshes.elementAt(0).materialIndex, isZero);
      expect(meshes.elementAt(0).name, equals('Cylinder'));
      expect(meshes.elementAt(0).animMeshes.length, isZero);
      expect(meshes.elementAt(0).morphingMethod, isZero);
      expect(meshes.elementAt(0).aabb, isNull);
    });
  });

  test('obj', () {
    testMeshes('Obj/Spider/spider.obj', (meshes) {
      expect(meshes.length, equals(19));
      expect(meshes.elementAt(0).primitiveTypes, equals(4));
      expect(meshes.elementAt(0).vertices.length, equals(240));
      expect(meshes.elementAt(0).normals.length, equals(240));
      expect(meshes.elementAt(0).tangents.length, equals(240));
      expect(meshes.elementAt(0).bitangents.length, equals(240));
      expect(meshes.elementAt(0).colors.length, isZero);
      expect(meshes.elementAt(0).textureCoords.length, equals(1));
      expect(meshes.elementAt(0).uvComponents.length, equals(1));
      expect(meshes.elementAt(0).faces.length, equals(80));
      expect(meshes.elementAt(0).bones.length, isZero);
      expect(meshes.elementAt(0).materialIndex, equals(3));
      expect(meshes.elementAt(0).name, equals('HLeib01'));
      expect(meshes.elementAt(0).animMeshes.length, isZero);
      expect(meshes.elementAt(0).morphingMethod, isZero);
      expect(meshes.elementAt(0).aabb, isNull);

      expect(meshes.elementAt(1).primitiveTypes, equals(4));
      expect(meshes.elementAt(1).vertices.length, equals(180));
      expect(meshes.elementAt(1).normals.length, equals(180));
      expect(meshes.elementAt(1).tangents.length, equals(180));
      expect(meshes.elementAt(1).bitangents.length, equals(180));
      expect(meshes.elementAt(1).colors.length, isZero);
      expect(meshes.elementAt(1).textureCoords.length, equals(1));
      expect(meshes.elementAt(1).uvComponents.length, equals(1));
      expect(meshes.elementAt(1).faces.length, equals(60));
      expect(meshes.elementAt(1).bones.length, isZero);
      expect(meshes.elementAt(1).materialIndex, equals(1));
      expect(meshes.elementAt(1).name, equals('OK'));
      expect(meshes.elementAt(1).animMeshes.length, isZero);
      expect(meshes.elementAt(1).morphingMethod, isZero);
      expect(meshes.elementAt(1).aabb, isNull);

      expect(meshes.elementAt(2).primitiveTypes, equals(4));
      expect(meshes.elementAt(2).vertices.length, equals(294));
      expect(meshes.elementAt(2).normals.length, equals(294));
      expect(meshes.elementAt(2).tangents.length, equals(294));
      expect(meshes.elementAt(2).bitangents.length, equals(294));
      expect(meshes.elementAt(2).colors.length, isZero);
      expect(meshes.elementAt(2).textureCoords.length, equals(1));
      expect(meshes.elementAt(2).uvComponents.length, equals(1));
      expect(meshes.elementAt(2).faces.length, equals(98));
      expect(meshes.elementAt(2).bones.length, isZero);
      expect(meshes.elementAt(2).materialIndex, equals(4));
      expect(meshes.elementAt(2).name, equals('Bein1Li'));
      expect(meshes.elementAt(2).animMeshes.length, isZero);
      expect(meshes.elementAt(2).morphingMethod, isZero);
      expect(meshes.elementAt(2).aabb, isNull);

      expect(meshes.elementAt(3).primitiveTypes, equals(4));
      expect(meshes.elementAt(3).vertices.length, equals(294));
      expect(meshes.elementAt(3).normals.length, equals(294));
      expect(meshes.elementAt(3).tangents.length, equals(294));
      expect(meshes.elementAt(3).bitangents.length, equals(294));
      expect(meshes.elementAt(3).colors.length, isZero);
      expect(meshes.elementAt(3).textureCoords.length, equals(1));
      expect(meshes.elementAt(3).uvComponents.length, equals(1));
      expect(meshes.elementAt(3).faces.length, equals(98));
      expect(meshes.elementAt(3).bones.length, isZero);
      expect(meshes.elementAt(3).materialIndex, equals(4));
      expect(meshes.elementAt(3).name, equals('Bein1Re'));
      expect(meshes.elementAt(3).animMeshes.length, isZero);
      expect(meshes.elementAt(3).morphingMethod, isZero);
      expect(meshes.elementAt(3).aabb, isNull);

      expect(meshes.elementAt(4).primitiveTypes, equals(4));
      expect(meshes.elementAt(4).vertices.length, equals(294));
      expect(meshes.elementAt(4).normals.length, equals(294));
      expect(meshes.elementAt(4).tangents.length, equals(294));
      expect(meshes.elementAt(4).bitangents.length, equals(294));
      expect(meshes.elementAt(4).colors.length, isZero);
      expect(meshes.elementAt(4).textureCoords.length, equals(1));
      expect(meshes.elementAt(4).uvComponents.length, equals(1));
      expect(meshes.elementAt(4).faces.length, equals(98));
      expect(meshes.elementAt(4).bones.length, isZero);
      expect(meshes.elementAt(4).materialIndex, equals(4));
      expect(meshes.elementAt(4).name, equals('Bein2Li'));
      expect(meshes.elementAt(4).animMeshes.length, isZero);
      expect(meshes.elementAt(4).morphingMethod, isZero);
      expect(meshes.elementAt(4).aabb, isNull);

      expect(meshes.elementAt(5).primitiveTypes, equals(4));
      expect(meshes.elementAt(5).vertices.length, equals(294));
      expect(meshes.elementAt(5).normals.length, equals(294));
      expect(meshes.elementAt(5).tangents.length, equals(294));
      expect(meshes.elementAt(5).bitangents.length, equals(294));
      expect(meshes.elementAt(5).colors.length, isZero);
      expect(meshes.elementAt(5).textureCoords.length, equals(1));
      expect(meshes.elementAt(5).uvComponents.length, equals(1));
      expect(meshes.elementAt(5).faces.length, equals(98));
      expect(meshes.elementAt(5).bones.length, isZero);
      expect(meshes.elementAt(5).materialIndex, equals(4));
      expect(meshes.elementAt(5).name, equals('Bein2Re'));
      expect(meshes.elementAt(5).animMeshes.length, isZero);
      expect(meshes.elementAt(5).morphingMethod, isZero);
      expect(meshes.elementAt(5).aabb, isNull);

      expect(meshes.elementAt(6).primitiveTypes, equals(4));
      expect(meshes.elementAt(6).vertices.length, equals(294));
      expect(meshes.elementAt(6).normals.length, equals(294));
      expect(meshes.elementAt(6).tangents.length, equals(294));
      expect(meshes.elementAt(6).bitangents.length, equals(294));
      expect(meshes.elementAt(6).colors.length, isZero);
      expect(meshes.elementAt(6).textureCoords.length, equals(1));
      expect(meshes.elementAt(6).uvComponents.length, equals(1));
      expect(meshes.elementAt(6).faces.length, equals(98));
      expect(meshes.elementAt(6).bones.length, isZero);
      expect(meshes.elementAt(6).materialIndex, equals(4));
      expect(meshes.elementAt(6).name, equals('Bein3Re'));
      expect(meshes.elementAt(6).animMeshes.length, isZero);
      expect(meshes.elementAt(6).morphingMethod, isZero);
      expect(meshes.elementAt(6).aabb, isNull);

      expect(meshes.elementAt(7).primitiveTypes, equals(4));
      expect(meshes.elementAt(7).vertices.length, equals(294));
      expect(meshes.elementAt(7).normals.length, equals(294));
      expect(meshes.elementAt(7).tangents.length, equals(294));
      expect(meshes.elementAt(7).bitangents.length, equals(294));
      expect(meshes.elementAt(7).colors.length, isZero);
      expect(meshes.elementAt(7).textureCoords.length, equals(1));
      expect(meshes.elementAt(7).uvComponents.length, equals(1));
      expect(meshes.elementAt(7).faces.length, equals(98));
      expect(meshes.elementAt(7).bones.length, isZero);
      expect(meshes.elementAt(7).materialIndex, equals(4));
      expect(meshes.elementAt(7).name, equals('Bein3Li'));
      expect(meshes.elementAt(7).animMeshes.length, isZero);
      expect(meshes.elementAt(7).morphingMethod, isZero);
      expect(meshes.elementAt(7).aabb, isNull);

      expect(meshes.elementAt(8).primitiveTypes, equals(4));
      expect(meshes.elementAt(8).vertices.length, equals(294));
      expect(meshes.elementAt(8).normals.length, equals(294));
      expect(meshes.elementAt(8).tangents.length, equals(294));
      expect(meshes.elementAt(8).bitangents.length, equals(294));
      expect(meshes.elementAt(8).colors.length, isZero);
      expect(meshes.elementAt(8).textureCoords.length, equals(1));
      expect(meshes.elementAt(8).uvComponents.length, equals(1));
      expect(meshes.elementAt(8).faces.length, equals(98));
      expect(meshes.elementAt(8).bones.length, isZero);
      expect(meshes.elementAt(8).materialIndex, equals(4));
      expect(meshes.elementAt(8).name, equals('Bein4Re'));
      expect(meshes.elementAt(8).animMeshes.length, isZero);
      expect(meshes.elementAt(8).morphingMethod, isZero);
      expect(meshes.elementAt(8).aabb, isNull);

      expect(meshes.elementAt(9).primitiveTypes, equals(4));
      expect(meshes.elementAt(9).vertices.length, equals(294));
      expect(meshes.elementAt(9).normals.length, equals(294));
      expect(meshes.elementAt(9).tangents.length, equals(294));
      expect(meshes.elementAt(9).bitangents.length, equals(294));
      expect(meshes.elementAt(9).colors.length, isZero);
      expect(meshes.elementAt(9).textureCoords.length, equals(1));
      expect(meshes.elementAt(9).uvComponents.length, equals(1));
      expect(meshes.elementAt(9).faces.length, equals(98));
      expect(meshes.elementAt(9).bones.length, isZero);
      expect(meshes.elementAt(9).materialIndex, equals(4));
      expect(meshes.elementAt(9).name, equals('Bein4Li'));
      expect(meshes.elementAt(9).animMeshes.length, isZero);
      expect(meshes.elementAt(9).morphingMethod, isZero);
      expect(meshes.elementAt(9).aabb, isNull);

      expect(meshes.elementAt(10).primitiveTypes, equals(4));
      expect(meshes.elementAt(10).vertices.length, equals(126));
      expect(meshes.elementAt(10).normals.length, equals(126));
      expect(meshes.elementAt(10).tangents.length, equals(126));
      expect(meshes.elementAt(10).bitangents.length, equals(126));
      expect(meshes.elementAt(10).colors.length, isZero);
      expect(meshes.elementAt(10).textureCoords.length, equals(1));
      expect(meshes.elementAt(10).uvComponents.length, equals(1));
      expect(meshes.elementAt(10).faces.length, equals(42));
      expect(meshes.elementAt(10).bones.length, isZero);
      expect(meshes.elementAt(10).materialIndex, equals(4));
      expect(meshes.elementAt(10).name, equals('Zahn'));
      expect(meshes.elementAt(10).animMeshes.length, isZero);
      expect(meshes.elementAt(10).morphingMethod, isZero);
      expect(meshes.elementAt(10).aabb, isNull);

      expect(meshes.elementAt(11).primitiveTypes, equals(4));
      expect(meshes.elementAt(11).vertices.length, equals(126));
      expect(meshes.elementAt(11).normals.length, equals(126));
      expect(meshes.elementAt(11).tangents.length, equals(126));
      expect(meshes.elementAt(11).bitangents.length, equals(126));
      expect(meshes.elementAt(11).colors.length, isZero);
      expect(meshes.elementAt(11).textureCoords.length, equals(1));
      expect(meshes.elementAt(11).uvComponents.length, equals(1));
      expect(meshes.elementAt(11).faces.length, equals(42));
      expect(meshes.elementAt(11).bones.length, isZero);
      expect(meshes.elementAt(11).materialIndex, equals(4));
      expect(meshes.elementAt(11).name, equals('klZahn'));
      expect(meshes.elementAt(11).animMeshes.length, isZero);
      expect(meshes.elementAt(11).morphingMethod, isZero);
      expect(meshes.elementAt(11).aabb, isNull);

      expect(meshes.elementAt(12).primitiveTypes, equals(4));
      expect(meshes.elementAt(12).vertices.length, equals(270));
      expect(meshes.elementAt(12).normals.length, equals(270));
      expect(meshes.elementAt(12).tangents.length, equals(270));
      expect(meshes.elementAt(12).bitangents.length, equals(270));
      expect(meshes.elementAt(12).colors.length, isZero);
      expect(meshes.elementAt(12).textureCoords.length, equals(1));
      expect(meshes.elementAt(12).uvComponents.length, equals(1));
      expect(meshes.elementAt(12).faces.length, equals(90));
      expect(meshes.elementAt(12).bones.length, isZero);
      expect(meshes.elementAt(12).materialIndex, equals(1));
      expect(meshes.elementAt(12).name, equals('Kopf'));
      expect(meshes.elementAt(12).animMeshes.length, isZero);
      expect(meshes.elementAt(12).morphingMethod, isZero);
      expect(meshes.elementAt(12).aabb, isNull);

      expect(meshes.elementAt(13).primitiveTypes, equals(4));
      expect(meshes.elementAt(13).vertices.length, equals(60));
      expect(meshes.elementAt(13).normals.length, equals(60));
      expect(meshes.elementAt(13).tangents.length, equals(60));
      expect(meshes.elementAt(13).bitangents.length, equals(60));
      expect(meshes.elementAt(13).colors.length, isZero);
      expect(meshes.elementAt(13).textureCoords.length, equals(1));
      expect(meshes.elementAt(13).uvComponents.length, equals(1));
      expect(meshes.elementAt(13).faces.length, equals(20));
      expect(meshes.elementAt(13).bones.length, isZero);
      expect(meshes.elementAt(13).materialIndex, equals(1));
      expect(meshes.elementAt(13).name, equals('Brust'));
      expect(meshes.elementAt(13).animMeshes.length, isZero);
      expect(meshes.elementAt(13).morphingMethod, isZero);
      expect(meshes.elementAt(13).aabb, isNull);

      expect(meshes.elementAt(14).primitiveTypes, equals(4));
      expect(meshes.elementAt(14).vertices.length, equals(270));
      expect(meshes.elementAt(14).normals.length, equals(270));
      expect(meshes.elementAt(14).tangents.length, equals(270));
      expect(meshes.elementAt(14).bitangents.length, equals(270));
      expect(meshes.elementAt(14).colors.length, isZero);
      expect(meshes.elementAt(14).textureCoords.length, equals(1));
      expect(meshes.elementAt(14).uvComponents.length, equals(1));
      expect(meshes.elementAt(14).faces.length, equals(90));
      expect(meshes.elementAt(14).bones.length, isZero);
      expect(meshes.elementAt(14).materialIndex, equals(1));
      expect(meshes.elementAt(14).name, equals('Kopf2'));
      expect(meshes.elementAt(14).animMeshes.length, isZero);
      expect(meshes.elementAt(14).morphingMethod, isZero);
      expect(meshes.elementAt(14).aabb, isNull);

      expect(meshes.elementAt(15).primitiveTypes, equals(4));
      expect(meshes.elementAt(15).vertices.length, equals(126));
      expect(meshes.elementAt(15).normals.length, equals(126));
      expect(meshes.elementAt(15).tangents.length, equals(126));
      expect(meshes.elementAt(15).bitangents.length, equals(126));
      expect(meshes.elementAt(15).colors.length, isZero);
      expect(meshes.elementAt(15).textureCoords.length, equals(1));
      expect(meshes.elementAt(15).uvComponents.length, equals(1));
      expect(meshes.elementAt(15).faces.length, equals(42));
      expect(meshes.elementAt(15).bones.length, isZero);
      expect(meshes.elementAt(15).materialIndex, equals(4));
      expect(meshes.elementAt(15).name, equals('Zahn2'));
      expect(meshes.elementAt(15).animMeshes.length, isZero);
      expect(meshes.elementAt(15).morphingMethod, isZero);
      expect(meshes.elementAt(15).aabb, isNull);

      expect(meshes.elementAt(16).primitiveTypes, equals(4));
      expect(meshes.elementAt(16).vertices.length, equals(126));
      expect(meshes.elementAt(16).normals.length, equals(126));
      expect(meshes.elementAt(16).tangents.length, equals(126));
      expect(meshes.elementAt(16).bitangents.length, equals(126));
      expect(meshes.elementAt(16).colors.length, isZero);
      expect(meshes.elementAt(16).textureCoords.length, equals(1));
      expect(meshes.elementAt(16).uvComponents.length, equals(1));
      expect(meshes.elementAt(16).faces.length, equals(42));
      expect(meshes.elementAt(16).bones.length, isZero);
      expect(meshes.elementAt(16).materialIndex, equals(4));
      expect(meshes.elementAt(16).name, equals('klZahn2'));
      expect(meshes.elementAt(16).animMeshes.length, isZero);
      expect(meshes.elementAt(16).morphingMethod, isZero);
      expect(meshes.elementAt(16).aabb, isNull);

      expect(meshes.elementAt(17).primitiveTypes, equals(4));
      expect(meshes.elementAt(17).vertices.length, equals(114));
      expect(meshes.elementAt(17).normals.length, equals(114));
      expect(meshes.elementAt(17).tangents.length, equals(114));
      expect(meshes.elementAt(17).bitangents.length, equals(114));
      expect(meshes.elementAt(17).colors.length, isZero);
      expect(meshes.elementAt(17).textureCoords.length, equals(1));
      expect(meshes.elementAt(17).uvComponents.length, equals(1));
      expect(meshes.elementAt(17).faces.length, equals(38));
      expect(meshes.elementAt(17).bones.length, isZero);
      expect(meshes.elementAt(17).materialIndex, equals(5));
      expect(meshes.elementAt(17).name, equals('Auge'));
      expect(meshes.elementAt(17).animMeshes.length, isZero);
      expect(meshes.elementAt(17).morphingMethod, isZero);
      expect(meshes.elementAt(17).aabb, isNull);

      expect(meshes.elementAt(18).primitiveTypes, equals(4));
      expect(meshes.elementAt(18).vertices.length, equals(114));
      expect(meshes.elementAt(18).normals.length, equals(114));
      expect(meshes.elementAt(18).tangents.length, equals(114));
      expect(meshes.elementAt(18).bitangents.length, equals(114));
      expect(meshes.elementAt(18).colors.length, isZero);
      expect(meshes.elementAt(18).textureCoords.length, equals(1));
      expect(meshes.elementAt(18).uvComponents.length, equals(1));
      expect(meshes.elementAt(18).faces.length, equals(38));
      expect(meshes.elementAt(18).bones.length, isZero);
      expect(meshes.elementAt(18).materialIndex, equals(5));
      expect(meshes.elementAt(18).name, equals('Duplicate05'));
      expect(meshes.elementAt(18).animMeshes.length, isZero);
      expect(meshes.elementAt(18).morphingMethod, isZero);
      expect(meshes.elementAt(18).aabb, isNull);
    });
  });
}