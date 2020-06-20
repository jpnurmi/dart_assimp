/*
---------------------------------------------------------------------------
Open Asset Import Library (assimp)
---------------------------------------------------------------------------

Copyright (c) 2006-2019, assimp team



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

import 'dart:ffi';

import 'ai_vector.dart';
import 'ai_quaternion.dart';
import 'dylib.dart';

typedef aiDecomposeMatrix_t = Void Function(
    Pointer<aiMatrix4x4> mat,
    Pointer<aiVector3D> scaling,
    Pointer<aiQuaternion> rotation,
    Pointer<aiVector3D> position);
typedef aiDecomposeMatrix_f = void Function(
    Pointer<aiMatrix4x4> mat,
    Pointer<aiVector3D> scaling,
    Pointer<aiQuaternion> rotation,
    Pointer<aiVector3D> position);

typedef aiTransposeMatrix3_t = Void Function(Pointer<aiMatrix3x3> mat);
typedef aiTransposeMatrix3_f = void Function(Pointer<aiMatrix3x3> mat);

aiTransposeMatrix3_f _aiTransposeMatrix3;
get aiTransposeMatrix3 => _aiTransposeMatrix3 ??=
    libassimp.lookupFunction<aiTransposeMatrix3_t, aiTransposeMatrix3_f>(
        'aiTransposeMatrix3');

typedef aiTransformVecByMatrix3_t = Void Function(
    Pointer<aiVector3D> vec, Pointer<aiMatrix3x3> mat);
typedef aiTransformVecByMatrix3_f = void Function(
    Pointer<aiVector3D> vec, Pointer<aiMatrix3x3> mat);

aiTransformVecByMatrix3_f _aiTransformVecByMatrix3;
get aiTransformVecByMatrix3 => _aiTransformVecByMatrix3 ??= libassimp
    .lookupFunction<aiTransformVecByMatrix3_t, aiTransformVecByMatrix3_f>(
        'aiTransformVecByMatrix3');

typedef aiTransformVecByMatrix4_t = Void Function(
    Pointer<aiVector3D> vec, Pointer<aiMatrix4x4> mat);
typedef aiTransformVecByMatrix4_f = void Function(
    Pointer<aiVector3D> vec, Pointer<aiMatrix4x4> mat);

aiTransformVecByMatrix4_f _aiTransformVecByMatrix4;
get aiTransformVecByMatrix4 => _aiTransformVecByMatrix4 ??= libassimp
    .lookupFunction<aiTransformVecByMatrix4_t, aiTransformVecByMatrix4_f>(
        'aiTransformVecByMatrix4');

typedef aiMultiplyMatrix4_t = Void Function(
    Pointer<aiMatrix4x4> dst, Pointer<aiMatrix4x4> src);
typedef aiMultiplyMatrix4_f = void Function(
    Pointer<aiMatrix4x4> dst, Pointer<aiMatrix4x4> src);

aiMultiplyMatrix4_f _aiMultiplyMatrix4;
get aiMultiplyMatrix4 => _aiMultiplyMatrix4 ??=
    libassimp.lookupFunction<aiMultiplyMatrix4_t, aiMultiplyMatrix4_f>(
        'aiMultiplyMatrix4');

typedef aiMultiplyMatrix3_t = Void Function(
    Pointer<aiMatrix3x3> dst, Pointer<aiMatrix3x3> src);
typedef aiMultiplyMatrix3_f = void Function(
    Pointer<aiMatrix3x3> dst, Pointer<aiMatrix3x3> src);

aiMultiplyMatrix3_f _aiMultiplyMatrix3;
get aiMultiplyMatrix3 => _aiMultiplyMatrix3 ??=
    libassimp.lookupFunction<aiMultiplyMatrix3_t, aiMultiplyMatrix3_f>(
        'aiMultiplyMatrix3');

typedef aiIdentityMatrix3_t = Void Function(Pointer<aiMatrix3x3> mat);
typedef aiIdentityMatrix3_f = void Function(Pointer<aiMatrix3x3> mat);

aiIdentityMatrix3_f _aiIdentityMatrix3;
get aiIdentityMatrix3 => _aiIdentityMatrix3 ??=
    libassimp.lookupFunction<aiIdentityMatrix3_t, aiIdentityMatrix3_f>(
        'aiIdentityMatrix3');

typedef aiIdentityMatrix4_t = Void Function(Pointer<aiMatrix4x4> mat);
typedef aiIdentityMatrix4_f = void Function(Pointer<aiMatrix4x4> mat);

aiIdentityMatrix4_f _aiIdentityMatrix4;
get aiIdentityMatrix4 => _aiIdentityMatrix4 ??=
    libassimp.lookupFunction<aiIdentityMatrix4_t, aiIdentityMatrix4_f>(
        'aiIdentityMatrix4');

class aiMatrix3x3 extends Struct {
  @Float() // ai_real
  double a1, a2, a3;
  @Float() // ai_real
  double b1, b2, b3;
  @Float() // ai_real
  double c1, c2, c3;
}

class aiMatrix4x4 extends Struct {
  @Float() // ai_real
  double a1, a2, a3, a4;
  @Float() // ai_real
  double b1, b2, b3, b4;
  @Float() // ai_real
  double c1, c2, c3, c4;
  @Float() // ai_real
  double d1, d2, d3, d4;
}
