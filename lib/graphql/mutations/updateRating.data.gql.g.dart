// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateRating.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateRatingData> _$gUpdateRatingDataSerializer =
    new _$GUpdateRatingDataSerializer();
Serializer<GUpdateRatingData_updateRating>
    _$gUpdateRatingDataUpdateRatingSerializer =
    new _$GUpdateRatingData_updateRatingSerializer();

class _$GUpdateRatingDataSerializer
    implements StructuredSerializer<GUpdateRatingData> {
  @override
  final Iterable<Type> types = const [GUpdateRatingData, _$GUpdateRatingData];
  @override
  final String wireName = 'GUpdateRatingData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateRatingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateRating;
    if (value != null) {
      result
        ..add('updateRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateRatingData_updateRating)));
    }
    return result;
  }

  @override
  GUpdateRatingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateRatingDataBuilder();

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
        case 'updateRating':
          result.updateRating.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateRatingData_updateRating))!
              as GUpdateRatingData_updateRating);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateRatingData_updateRatingSerializer
    implements StructuredSerializer<GUpdateRatingData_updateRating> {
  @override
  final Iterable<Type> types = const [
    GUpdateRatingData_updateRating,
    _$GUpdateRatingData_updateRating
  ];
  @override
  final String wireName = 'GUpdateRatingData_updateRating';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateRatingData_updateRating object,
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
  GUpdateRatingData_updateRating deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateRatingData_updateRatingBuilder();

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

class _$GUpdateRatingData extends GUpdateRatingData {
  @override
  final String G__typename;
  @override
  final GUpdateRatingData_updateRating? updateRating;

  factory _$GUpdateRatingData(
          [void Function(GUpdateRatingDataBuilder)? updates]) =>
      (new GUpdateRatingDataBuilder()..update(updates)).build();

  _$GUpdateRatingData._({required this.G__typename, this.updateRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateRatingData', 'G__typename');
  }

  @override
  GUpdateRatingData rebuild(void Function(GUpdateRatingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateRatingDataBuilder toBuilder() =>
      new GUpdateRatingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateRatingData &&
        G__typename == other.G__typename &&
        updateRating == other.updateRating;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateRating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateRatingData')
          ..add('G__typename', G__typename)
          ..add('updateRating', updateRating))
        .toString();
  }
}

class GUpdateRatingDataBuilder
    implements Builder<GUpdateRatingData, GUpdateRatingDataBuilder> {
  _$GUpdateRatingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateRatingData_updateRatingBuilder? _updateRating;
  GUpdateRatingData_updateRatingBuilder get updateRating =>
      _$this._updateRating ??= new GUpdateRatingData_updateRatingBuilder();
  set updateRating(GUpdateRatingData_updateRatingBuilder? updateRating) =>
      _$this._updateRating = updateRating;

  GUpdateRatingDataBuilder() {
    GUpdateRatingData._initializeBuilder(this);
  }

  GUpdateRatingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateRating = $v.updateRating?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateRatingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateRatingData;
  }

  @override
  void update(void Function(GUpdateRatingDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateRatingData build() {
    _$GUpdateRatingData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateRatingData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUpdateRatingData', 'G__typename'),
              updateRating: _updateRating?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateRating';
        _updateRating?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateRatingData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateRatingData_updateRating extends GUpdateRatingData_updateRating {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final int rate;
  @override
  final String comment;

  factory _$GUpdateRatingData_updateRating(
          [void Function(GUpdateRatingData_updateRatingBuilder)? updates]) =>
      (new GUpdateRatingData_updateRatingBuilder()..update(updates)).build();

  _$GUpdateRatingData_updateRating._(
      {required this.G__typename,
      required this.title,
      required this.rate,
      required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateRatingData_updateRating', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GUpdateRatingData_updateRating', 'title');
    BuiltValueNullFieldError.checkNotNull(
        rate, 'GUpdateRatingData_updateRating', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        comment, 'GUpdateRatingData_updateRating', 'comment');
  }

  @override
  GUpdateRatingData_updateRating rebuild(
          void Function(GUpdateRatingData_updateRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateRatingData_updateRatingBuilder toBuilder() =>
      new GUpdateRatingData_updateRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateRatingData_updateRating &&
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
    return (newBuiltValueToStringHelper('GUpdateRatingData_updateRating')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('rate', rate)
          ..add('comment', comment))
        .toString();
  }
}

class GUpdateRatingData_updateRatingBuilder
    implements
        Builder<GUpdateRatingData_updateRating,
            GUpdateRatingData_updateRatingBuilder> {
  _$GUpdateRatingData_updateRating? _$v;

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

  GUpdateRatingData_updateRatingBuilder() {
    GUpdateRatingData_updateRating._initializeBuilder(this);
  }

  GUpdateRatingData_updateRatingBuilder get _$this {
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
  void replace(GUpdateRatingData_updateRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateRatingData_updateRating;
  }

  @override
  void update(void Function(GUpdateRatingData_updateRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateRatingData_updateRating build() {
    final _$result = _$v ??
        new _$GUpdateRatingData_updateRating._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUpdateRatingData_updateRating', 'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'GUpdateRatingData_updateRating', 'title'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate, 'GUpdateRatingData_updateRating', 'rate'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, 'GUpdateRatingData_updateRating', 'comment'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
