// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getProduct.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProductVars> _$gGetProductVarsSerializer =
    new _$GGetProductVarsSerializer();

class _$GGetProductVarsSerializer
    implements StructuredSerializer<GGetProductVars> {
  @override
  final Iterable<Type> types = const [GGetProductVars, _$GGetProductVars];
  @override
  final String wireName = 'GGetProductVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProductVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductVars extends GGetProductVars {
  @override
  final String slug;

  factory _$GGetProductVars([void Function(GGetProductVarsBuilder)? updates]) =>
      (new GGetProductVarsBuilder()..update(updates)).build();

  _$GGetProductVars._({required this.slug}) : super._() {
    BuiltValueNullFieldError.checkNotNull(slug, 'GGetProductVars', 'slug');
  }

  @override
  GGetProductVars rebuild(void Function(GGetProductVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductVarsBuilder toBuilder() =>
      new GGetProductVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductVars && slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc(0, slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductVars')..add('slug', slug))
        .toString();
  }
}

class GGetProductVarsBuilder
    implements Builder<GGetProductVars, GGetProductVarsBuilder> {
  _$GGetProductVars? _$v;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  GGetProductVarsBuilder();

  GGetProductVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductVars;
  }

  @override
  void update(void Function(GGetProductVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductVars build() {
    final _$result = _$v ??
        new _$GGetProductVars._(
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, 'GGetProductVars', 'slug'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
