// Mocks generated by Mockito 5.4.4 from annotations
// in campus_app/test/pages/mensa/mensa_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:appwrite/appwrite.dart' as _i13;
import 'package:appwrite/models.dart' as _i6;
import 'package:appwrite/src/client.dart' as _i5;
import 'package:appwrite/src/enums.dart' as _i12;
import 'package:appwrite/src/response.dart' as _i4;
import 'package:appwrite/src/upload_progress.dart' as _i11;
import 'package:campus_app/pages/mensa/dish_entity.dart' as _i9;
import 'package:campus_app/pages/mensa/mensa_datasource.dart' as _i7;
import 'package:dio/dio.dart' as _i2;
import 'package:hive/hive.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;

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

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBox_1<E> extends _i1.SmartFake implements _i3.Box<E> {
  _FakeBox_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_2<T> extends _i1.SmartFake implements _i4.Response<T> {
  _FakeResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClient_3 extends _i1.SmartFake implements _i5.Client {
  _FakeClient_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDocumentList_4 extends _i1.SmartFake implements _i6.DocumentList {
  _FakeDocumentList_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDocument_5 extends _i1.SmartFake implements _i6.Document {
  _FakeDocument_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MensaDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMensaDataSource extends _i1.Mock implements _i7.MensaDataSource {
  MockMensaDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.Dio);

  @override
  _i3.Box<dynamic> get mensaCache => (super.noSuchMethod(
        Invocation.getter(#mensaCache),
        returnValue: _FakeBox_1<dynamic>(
          this,
          Invocation.getter(#mensaCache),
        ),
      ) as _i3.Box<dynamic>);

  @override
  _i8.Future<Map<String, dynamic>> getRemoteData(int? restaurant) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRemoteData,
          [restaurant],
        ),
        returnValue:
            _i8.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i8.Future<Map<String, dynamic>>);

  @override
  _i8.Future<void> writeDishEntitiesToCache(
    List<_i9.DishEntity>? entities,
    int? restaurant,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeDishEntitiesToCache,
          [
            entities,
            restaurant,
          ],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  List<_i9.DishEntity> readDishEntitiesFromCache(int? restaurant) =>
      (super.noSuchMethod(
        Invocation.method(
          #readDishEntitiesFromCache,
          [restaurant],
        ),
        returnValue: <_i9.DishEntity>[],
      ) as List<_i9.DishEntity>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i5.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Map<String, String> get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: <String, String>{},
      ) as Map<String, String>);

  @override
  set config(Map<String, String>? _config) => super.noSuchMethod(
        Invocation.setter(
          #config,
          _config,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get endPoint => (super.noSuchMethod(
        Invocation.getter(#endPoint),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.getter(#endPoint),
        ),
      ) as String);

  @override
  _i8.Future<dynamic> webAuth(
    Uri? url, {
    String? callbackUrlScheme,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #webAuth,
          [url],
          {#callbackUrlScheme: callbackUrlScheme},
        ),
        returnValue: _i8.Future<dynamic>.value(),
      ) as _i8.Future<dynamic>);

  @override
  _i8.Future<_i4.Response<dynamic>> chunkedUpload({
    required String? path,
    required Map<String, dynamic>? params,
    required String? paramName,
    required String? idParamName,
    required Map<String, String>? headers,
    dynamic Function(_i11.UploadProgress)? onProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #chunkedUpload,
          [],
          {
            #path: path,
            #params: params,
            #paramName: paramName,
            #idParamName: idParamName,
            #headers: headers,
            #onProgress: onProgress,
          },
        ),
        returnValue:
            _i8.Future<_i4.Response<dynamic>>.value(_FakeResponse_2<dynamic>(
          this,
          Invocation.method(
            #chunkedUpload,
            [],
            {
              #path: path,
              #params: params,
              #paramName: paramName,
              #idParamName: idParamName,
              #headers: headers,
              #onProgress: onProgress,
            },
          ),
        )),
      ) as _i8.Future<_i4.Response<dynamic>>);

  @override
  _i5.Client setSelfSigned({bool? status = true}) => (super.noSuchMethod(
        Invocation.method(
          #setSelfSigned,
          [],
          {#status: status},
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #setSelfSigned,
            [],
            {#status: status},
          ),
        ),
      ) as _i5.Client);

  @override
  _i5.Client setEndpoint(String? endPoint) => (super.noSuchMethod(
        Invocation.method(
          #setEndpoint,
          [endPoint],
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #setEndpoint,
            [endPoint],
          ),
        ),
      ) as _i5.Client);

  @override
  _i5.Client setEndPointRealtime(String? endPoint) => (super.noSuchMethod(
        Invocation.method(
          #setEndPointRealtime,
          [endPoint],
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #setEndPointRealtime,
            [endPoint],
          ),
        ),
      ) as _i5.Client);

  @override
  _i5.Client setProject(dynamic value) => (super.noSuchMethod(
        Invocation.method(
          #setProject,
          [value],
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #setProject,
            [value],
          ),
        ),
      ) as _i5.Client);

  @override
  _i5.Client setJWT(dynamic value) => (super.noSuchMethod(
        Invocation.method(
          #setJWT,
          [value],
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #setJWT,
            [value],
          ),
        ),
      ) as _i5.Client);

  @override
  _i5.Client setLocale(dynamic value) => (super.noSuchMethod(
        Invocation.method(
          #setLocale,
          [value],
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #setLocale,
            [value],
          ),
        ),
      ) as _i5.Client);

  @override
  _i5.Client addHeader(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addHeader,
          [
            key,
            value,
          ],
        ),
        returnValue: _FakeClient_3(
          this,
          Invocation.method(
            #addHeader,
            [
              key,
              value,
            ],
          ),
        ),
      ) as _i5.Client);

  @override
  _i8.Future<_i4.Response<dynamic>> call(
    _i12.HttpMethod? method, {
    String? path = r'',
    Map<String, String>? headers = const {},
    Map<String, dynamic>? params = const {},
    _i12.ResponseType? responseType,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [method],
          {
            #path: path,
            #headers: headers,
            #params: params,
            #responseType: responseType,
          },
        ),
        returnValue:
            _i8.Future<_i4.Response<dynamic>>.value(_FakeResponse_2<dynamic>(
          this,
          Invocation.method(
            #call,
            [method],
            {
              #path: path,
              #headers: headers,
              #params: params,
              #responseType: responseType,
            },
          ),
        )),
      ) as _i8.Future<_i4.Response<dynamic>>);
}

/// A class which mocks [Databases].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabases extends _i1.Mock implements _i13.Databases {
  MockDatabases() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_3(
          this,
          Invocation.getter(#client),
        ),
      ) as _i5.Client);

  @override
  _i8.Future<_i6.DocumentList> listDocuments({
    required String? databaseId,
    required String? collectionId,
    List<String>? queries,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #listDocuments,
          [],
          {
            #databaseId: databaseId,
            #collectionId: collectionId,
            #queries: queries,
          },
        ),
        returnValue: _i8.Future<_i6.DocumentList>.value(_FakeDocumentList_4(
          this,
          Invocation.method(
            #listDocuments,
            [],
            {
              #databaseId: databaseId,
              #collectionId: collectionId,
              #queries: queries,
            },
          ),
        )),
      ) as _i8.Future<_i6.DocumentList>);

  @override
  _i8.Future<_i6.Document> createDocument({
    required String? databaseId,
    required String? collectionId,
    required String? documentId,
    required Map<dynamic, dynamic>? data,
    List<String>? permissions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createDocument,
          [],
          {
            #databaseId: databaseId,
            #collectionId: collectionId,
            #documentId: documentId,
            #data: data,
            #permissions: permissions,
          },
        ),
        returnValue: _i8.Future<_i6.Document>.value(_FakeDocument_5(
          this,
          Invocation.method(
            #createDocument,
            [],
            {
              #databaseId: databaseId,
              #collectionId: collectionId,
              #documentId: documentId,
              #data: data,
              #permissions: permissions,
            },
          ),
        )),
      ) as _i8.Future<_i6.Document>);

  @override
  _i8.Future<_i6.Document> getDocument({
    required String? databaseId,
    required String? collectionId,
    required String? documentId,
    List<String>? queries,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDocument,
          [],
          {
            #databaseId: databaseId,
            #collectionId: collectionId,
            #documentId: documentId,
            #queries: queries,
          },
        ),
        returnValue: _i8.Future<_i6.Document>.value(_FakeDocument_5(
          this,
          Invocation.method(
            #getDocument,
            [],
            {
              #databaseId: databaseId,
              #collectionId: collectionId,
              #documentId: documentId,
              #queries: queries,
            },
          ),
        )),
      ) as _i8.Future<_i6.Document>);

  @override
  _i8.Future<_i6.Document> updateDocument({
    required String? databaseId,
    required String? collectionId,
    required String? documentId,
    Map<dynamic, dynamic>? data,
    List<String>? permissions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDocument,
          [],
          {
            #databaseId: databaseId,
            #collectionId: collectionId,
            #documentId: documentId,
            #data: data,
            #permissions: permissions,
          },
        ),
        returnValue: _i8.Future<_i6.Document>.value(_FakeDocument_5(
          this,
          Invocation.method(
            #updateDocument,
            [],
            {
              #databaseId: databaseId,
              #collectionId: collectionId,
              #documentId: documentId,
              #data: data,
              #permissions: permissions,
            },
          ),
        )),
      ) as _i8.Future<_i6.Document>);

  @override
  _i8.Future<dynamic> deleteDocument({
    required String? databaseId,
    required String? collectionId,
    required String? documentId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteDocument,
          [],
          {
            #databaseId: databaseId,
            #collectionId: collectionId,
            #documentId: documentId,
          },
        ),
        returnValue: _i8.Future<dynamic>.value(),
      ) as _i8.Future<dynamic>);
}
