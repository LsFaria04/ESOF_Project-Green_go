// Mocks generated by Mockito 5.4.4 from annotations
// in green_go/test/missions_fetcher_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:green_go/controller/database/database_missions.dart' as _i2;
import 'package:green_go/controller/database/database_user_missions.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

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

/// A class which mocks [DataBaseMissions].
///
/// See the documentation for Mockito's code generation for more information.
class MockDataBaseMissions extends _i1.Mock implements _i2.DataBaseMissions {
  @override
  _i3.Future<dynamic> getAllMissions() => (super.noSuchMethod(
        Invocation.method(
          #getAllMissions,
          [],
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
}

/// A class which mocks [DataBaseUserMissions].
///
/// See the documentation for Mockito's code generation for more information.
class MockDataBaseUserMissions extends _i1.Mock
    implements _i4.DataBaseUserMissions {
  @override
  _i3.Future<dynamic> getUserMissions(String? uid) => (super.noSuchMethod(
        Invocation.method(
          #getUserMissions,
          [uid],
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);

  @override
  _i3.Future<dynamic> deleteUserMission(
    String? userId,
    Map<String, int>? missionPoints,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUserMission,
          [
            userId,
            missionPoints,
          ],
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);

  @override
  _i3.Future<dynamic> addUserMission(
    String? userId,
    Map<String, int>? missionPoints,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addUserMission,
          [
            userId,
            missionPoints,
          ],
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);

  @override
  _i3.Future<dynamic> addCompletedMission(
    String? userId,
    String? missionId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addCompletedMission,
          [
            userId,
            missionId,
          ],
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
}
