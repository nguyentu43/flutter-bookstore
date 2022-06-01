// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addRating.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddRatingData> _$gAddRatingDataSerializer =
    new _$GAddRatingDataSerializer();
Serializer<GAddRatingData_result> _$gAddRatingDataResultSerializer =
    new _$GAddRatingData_resultSerializer();

class _$GAddRatingDataSerializer
    implements StructuredSerializer<GAddRatingData> {
  @override
  final Iterable<Type> types = const [GAddRatingData, _$GAddRatingData];
  @override
  final String wireName = 'GAddRatingData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddRatingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAddRatingData_result)));
    }
    return result;
  }

  @override
  GAddRatingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddRatingDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddRatingData_result))!
              as GAddRatingData_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddRatingData_resultSerializer
    implements StructuredSerializer<GAddRatingData_result> {
  @override
  final Iterable<Type> types = const [
    GAddRatingData_result,
    _$GAddRatingData_result
  ];
  @override
  final String wireName = 'GAddRatingData_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddRatingData_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(int)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddRatingData_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddRatingData_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddRatingData extends GAddRatingData {
  @override
  final String G__typename;
  @override
  final GAddRatingData_result? result;

  factory _$GAddRatingData([void Function(GAddRatingDataBuilder)? updates]) =>
      (new GAddRatingDataBuilder()..update(updates)).build();

  _$GAddRatingData._({required this.G__typename, this.result}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAddRatingData', 'G__typename');
  }

  @override
  GAddRatingData rebuild(void Function(GAddRatingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddRatingDataBuilder toBuilder() =>
      new GAddRatingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddRatingData &&
        G__typename == other.G__typename &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddRatingData')
          ..add('G__typename', G__typename)
          ..add('result', result))
        .toString();
  }
}

class GAddRatingDataBuilder
    implements Builder<GAddRatingData, GAddRatingDataBuilder> {
  _$GAddRatingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddRatingData_resultBuilder? _result;
  GAddRatingData_resultBuilder get result =>
      _$this._result ??= new GAddRatingData_resultBuilder();
  set result(GAddRatingData_resultBuilder? result) => _$this._result = result;

  GAddRatingDataBuilder() {
    GAddRatingData._initializeBuilder(this);
  }

  GAddRatingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddRatingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddRatingData;
  }

  @override
  void update(void Function(GAddRatingDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddRatingData build() {
    _$GAddRatingData _$result;
    try {
      _$result = _$v ??
          new _$GAddRatingData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAddRatingData', 'G__typename'),
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddRatingData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddRatingData_result extends GAddRatingData_result {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final int rate;
  @override
  final String comment;

  factory _$GAddRatingData_result(
          [void Function(GAddRatingData_resultBuilder)? updates]) =>
      (new GAddRatingData_resultBuilder()..update(updates)).build();

  _$GAddRatingData_result._(
      {required this.G__typename,
      required this.title,
      required this.rate,
      required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAddRatingData_result', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GAddRatingData_result', 'title');
    BuiltValueNullFieldError.checkNotNull(
        rate, 'GAddRatingData_result', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        comment, 'GAddRatingData_result', 'comment');
  }

  @override
  GAddRatingData_result rebuild(
          void Function(GAddRatingData_resultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddRatingData_resultBuilder toBuilder() =>
      new GAddRatingData_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddRatingData_result &&
        G__typename == other.G__typename &&
        title == other.title &&
        rate == other.rate &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), title.hashCode), rate.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddRatingData_result')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('rate', rate)
          ..add('comment', comment))
        .toString();
  }
}

class GAddRatingData_resultBuilder
    implements Builder<GAddRatingData_result, GAddRatingData_resultBuilder> {
  _$GAddRatingData_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _rate;
  int? get rate => _$this._rate;
  set rate(int? rate) => _$this._rate = rate;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GAddRatingData_resultBuilder() {
    GAddRatingData_result._initializeBuilder(this);
  }

  GAddRatingData_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _rate = $v.rate;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddRatingData_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddRatingData_result;
  }

  @override
  void update(void Function(GAddRatingData_resultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddRatingData_result build() {
    final _$result = _$v ??
        new _$GAddRatingData_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAddRatingData_result', 'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'GAddRatingData_result', 'title'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate, 'GAddRatingData_result', 'rate'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, 'GAddRatingData_result', 'comment'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
