// Mocks generated by Mockito 5.4.4 from annotations
// in green_go/test/score_main_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;
import 'dart:io' as _i7;

import 'package:firebase_storage/firebase_storage.dart' as _i2;
import 'package:green_go/controller/authentication/auth.dart' as _i4;
import 'package:green_go/controller/database/cloud_storage.dart' as _i6;
import 'package:green_go/controller/database/database_users.dart' as _i3;
import 'package:green_go/controller/fetchers/user_fetcher.dart' as _i10;
import 'package:green_go/model/user_model.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeReference_0 extends _i1.SmartFake implements _i2.Reference {
  _FakeReference_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUploadTask_1 extends _i1.SmartFake implements _i2.UploadTask {
  _FakeUploadTask_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDataBaseUsers_2 extends _i1.SmartFake implements _i3.DataBaseUsers {
  _FakeDataBaseUsers_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthService_3 extends _i1.SmartFake implements _i4.AuthService {
  _FakeAuthService_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserModel_4 extends _i1.SmartFake implements _i5.UserModel {
  _FakeUserModel_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CloudStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockCloudStorage extends _i1.Mock implements _i6.CloudStorage {
  @override
  _i2.Reference get storageRef => (super.noSuchMethod(
        Invocation.getter(#storageRef),
        returnValue: _FakeReference_0(
          this,
          Invocation.getter(#storageRef),
        ),
        returnValueForMissingStub: _FakeReference_0(
          this,
          Invocation.getter(#storageRef),
        ),
      ) as _i2.Reference);

  @override
  _i2.UploadTask uploadFile(
    _i7.File? file,
    String? path,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadFile,
          [
            file,
            path,
          ],
        ),
        returnValue: _FakeUploadTask_1(
          this,
          Invocation.method(
            #uploadFile,
            [
              file,
              path,
            ],
          ),
        ),
        returnValueForMissingStub: _FakeUploadTask_1(
          this,
          Invocation.method(
            #uploadFile,
            [
              file,
              path,
            ],
          ),
        ),
      ) as _i2.UploadTask);

  @override
  _i8.Future<String> downloadFileURL(String? path) => (super.noSuchMethod(
        Invocation.method(
          #downloadFileURL,
          [path],
        ),
        returnValue: _i8.Future<String>.value(_i9.dummyValue<String>(
          this,
          Invocation.method(
            #downloadFileURL,
            [path],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<String>.value(_i9.dummyValue<String>(
          this,
          Invocation.method(
            #downloadFileURL,
            [path],
          ),
        )),
      ) as _i8.Future<String>);

  @override
  _i8.Future<String> uploadImageToFirebaseStorage(String? imagePath) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadImageToFirebaseStorage,
          [imagePath],
        ),
        returnValue: _i8.Future<String>.value(_i9.dummyValue<String>(
          this,
          Invocation.method(
            #uploadImageToFirebaseStorage,
            [imagePath],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<String>.value(_i9.dummyValue<String>(
          this,
          Invocation.method(
            #uploadImageToFirebaseStorage,
            [imagePath],
          ),
        )),
      ) as _i8.Future<String>);
}

/// A class which mocks [UserFetcher].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserFetcher extends _i1.Mock implements _i10.UserFetcher {
  @override
  _i3.DataBaseUsers get db => (super.noSuchMethod(
        Invocation.getter(#db),
        returnValue: _FakeDataBaseUsers_2(
          this,
          Invocation.getter(#db),
        ),
        returnValueForMissingStub: _FakeDataBaseUsers_2(
          this,
          Invocation.getter(#db),
        ),
      ) as _i3.DataBaseUsers);

  @override
  set db(_i3.DataBaseUsers? _db) => super.noSuchMethod(
        Invocation.setter(
          #db,
          _db,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i5.UserModel> get users => (super.noSuchMethod(
        Invocation.getter(#users),
        returnValue: <_i5.UserModel>[],
        returnValueForMissingStub: <_i5.UserModel>[],
      ) as List<_i5.UserModel>);

  @override
  set users(List<_i5.UserModel>? _users) => super.noSuchMethod(
        Invocation.setter(
          #users,
          _users,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.AuthService get auth => (super.noSuchMethod(
        Invocation.getter(#auth),
        returnValue: _FakeAuthService_3(
          this,
          Invocation.getter(#auth),
        ),
        returnValueForMissingStub: _FakeAuthService_3(
          this,
          Invocation.getter(#auth),
        ),
      ) as _i4.AuthService);

  @override
  set auth(_i4.AuthService? _auth) => super.noSuchMethod(
        Invocation.setter(
          #auth,
          _auth,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setDB(_i3.DataBaseUsers? newDB) => super.noSuchMethod(
        Invocation.method(
          #setDB,
          [newDB],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setAuth(_i4.AuthService? newAuth) => super.noSuchMethod(
        Invocation.method(
          #setAuth,
          [newAuth],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i8.Future<List<_i5.UserModel>> getDataForLeaderboard() =>
      (super.noSuchMethod(
        Invocation.method(
          #getDataForLeaderboard,
          [],
        ),
        returnValue: _i8.Future<List<_i5.UserModel>>.value(<_i5.UserModel>[]),
        returnValueForMissingStub:
            _i8.Future<List<_i5.UserModel>>.value(<_i5.UserModel>[]),
      ) as _i8.Future<List<_i5.UserModel>>);

  @override
  _i8.Future<_i5.UserModel> getCurrentUserData() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentUserData,
          [],
        ),
        returnValue: _i8.Future<_i5.UserModel>.value(_FakeUserModel_4(
          this,
          Invocation.method(
            #getCurrentUserData,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<_i5.UserModel>.value(_FakeUserModel_4(
          this,
          Invocation.method(
            #getCurrentUserData,
            [],
          ),
        )),
      ) as _i8.Future<_i5.UserModel>);
}
