// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'removeRating.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveRatingData> _$gRemoveRatingDataSerializer =
    new _$GRemoveRatingDataSerializer();

class _$GRemoveRatingDataSerializer
    implements StructuredSerializer<GRemoveRatingData> {
  @override
  final Iterable<Type> types = const [GRemoveRatingData, _$GRemoveRatingData];
  @override
  final String wireName = 'GRemoveRatingData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveRatingData object,
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
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GRemoveRatingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveRatingDataBuilder();

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
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveRatingData extends GRemoveRatingData {
  @override
  final String G__typename;
  @override
  final bool? result;

  factory _$GRemoveRatingData(
          [void Function(GRemoveRatingDataBuilder)? updates]) =>
      (new GRemoveRatingDataBuilder()..update(updates)).build();

  _$GRemoveRatingData._({required this.G__typename, this.result}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRemoveRatingData', 'G__typename');
  }

  @override
  GRemoveRatingData rebuild(void Function(GRemoveRatingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveRatingDataBuilder toBuilder() =>
      new GRemoveRatingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveRatingData &&
        G__typename == other.G__typename &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveRatingData')
          ..add('G__typename', G__typename)
          ..add('result', result))
        .toString();
  }
}

class GRemoveRatingDataBuilder
    implements Builder<GRemoveRatingData, GRemoveRatingDataBuilder> {
  _$GRemoveRatingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  GRemoveRatingDataBuilder() {
    GRemoveRatingData._initializeBuilder(this);
  }

  GRemoveRatingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveRatingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveRatingData;
  }

  @override
  void update(void Function(GRemoveRatingDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveRatingData build() {
    final _$result = _$v ??
        new _$GRemoveRatingData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRemoveRatingData', 'G__typename'),
            result: result);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
