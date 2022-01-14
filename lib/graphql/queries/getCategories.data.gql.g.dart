// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getCategories.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCategoriesData> _$gGetCategoriesDataSerializer =
    new _$GGetCategoriesDataSerializer();
Serializer<GGetCategoriesData_categories>
    _$gGetCategoriesDataCategoriesSerializer =
    new _$GGetCategoriesData_categoriesSerializer();
Serializer<GGetCategoriesData_categories_children>
    _$gGetCategoriesDataCategoriesChildrenSerializer =
    new _$GGetCategoriesData_categories_childrenSerializer();
Serializer<GGetCategoriesData_categories_children_children>
    _$gGetCategoriesDataCategoriesChildrenChildrenSerializer =
    new _$GGetCategoriesData_categories_children_childrenSerializer();
Serializer<GGetCategoriesData_categories_parent>
    _$gGetCategoriesDataCategoriesParentSerializer =
    new _$GGetCategoriesData_categories_parentSerializer();

class _$GGetCategoriesDataSerializer
    implements StructuredSerializer<GGetCategoriesData> {
  @override
  final Iterable<Type> types = const [GGetCategoriesData, _$GGetCategoriesData];
  @override
  final String wireName = 'GGetCategoriesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetCategoriesData_categories)])),
    ];

    return result;
  }

  @override
  GGetCategoriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoriesDataBuilder();

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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCategoriesData_categories)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoriesData_categoriesSerializer
    implements StructuredSerializer<GGetCategoriesData_categories> {
  @override
  final Iterable<Type> types = const [
    GGetCategoriesData_categories,
    _$GGetCategoriesData_categories
  ];
  @override
  final String wireName = 'GGetCategoriesData_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoriesData_categories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.children;
    if (value != null) {
      result
        ..add('children')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetCategoriesData_categories_children)
            ])));
    }
    value = object.parent;
    if (value != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetCategoriesData_categories_parent)));
    }
    return result;
  }

  @override
  GGetCategoriesData_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoriesData_categoriesBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'children':
          result.children.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCategoriesData_categories_children)
              ]))! as BuiltList<Object?>);
          break;
        case 'parent':
          result.parent.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetCategoriesData_categories_parent))!
              as GGetCategoriesData_categories_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoriesData_categories_childrenSerializer
    implements StructuredSerializer<GGetCategoriesData_categories_children> {
  @override
  final Iterable<Type> types = const [
    GGetCategoriesData_categories_children,
    _$GGetCategoriesData_categories_children
  ];
  @override
  final String wireName = 'GGetCategoriesData_categories_children';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoriesData_categories_children object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.children;
    if (value != null) {
      result
        ..add('children')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetCategoriesData_categories_children_children)
            ])));
    }
    return result;
  }

  @override
  GGetCategoriesData_categories_children deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoriesData_categories_childrenBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'children':
          result.children.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCategoriesData_categories_children_children)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoriesData_categories_children_childrenSerializer
    implements
        StructuredSerializer<GGetCategoriesData_categories_children_children> {
  @override
  final Iterable<Type> types = const [
    GGetCategoriesData_categories_children_children,
    _$GGetCategoriesData_categories_children_children
  ];
  @override
  final String wireName = 'GGetCategoriesData_categories_children_children';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetCategoriesData_categories_children_children object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetCategoriesData_categories_children_children deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoriesData_categories_children_childrenBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoriesData_categories_parentSerializer
    implements StructuredSerializer<GGetCategoriesData_categories_parent> {
  @override
  final Iterable<Type> types = const [
    GGetCategoriesData_categories_parent,
    _$GGetCategoriesData_categories_parent
  ];
  @override
  final String wireName = 'GGetCategoriesData_categories_parent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoriesData_categories_parent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetCategoriesData_categories_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoriesData_categories_parentBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoriesData extends GGetCategoriesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetCategoriesData_categories> categories;

  factory _$GGetCategoriesData(
          [void Function(GGetCategoriesDataBuilder)? updates]) =>
      (new GGetCategoriesDataBuilder()..update(updates)).build();

  _$GGetCategoriesData._({required this.G__typename, required this.categories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCategoriesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'GGetCategoriesData', 'categories');
  }

  @override
  GGetCategoriesData rebuild(
          void Function(GGetCategoriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoriesDataBuilder toBuilder() =>
      new GGetCategoriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoriesData &&
        G__typename == other.G__typename &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCategoriesData')
          ..add('G__typename', G__typename)
          ..add('categories', categories))
        .toString();
  }
}

class GGetCategoriesDataBuilder
    implements Builder<GGetCategoriesData, GGetCategoriesDataBuilder> {
  _$GGetCategoriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetCategoriesData_categories>? _categories;
  ListBuilder<GGetCategoriesData_categories> get categories =>
      _$this._categories ??= new ListBuilder<GGetCategoriesData_categories>();
  set categories(ListBuilder<GGetCategoriesData_categories>? categories) =>
      _$this._categories = categories;

  GGetCategoriesDataBuilder() {
    GGetCategoriesData._initializeBuilder(this);
  }

  GGetCategoriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoriesData;
  }

  @override
  void update(void Function(GGetCategoriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoriesData build() {
    _$GGetCategoriesData _$result;
    try {
      _$result = _$v ??
          new _$GGetCategoriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetCategoriesData', 'G__typename'),
              categories: categories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCategoriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCategoriesData_categories extends GGetCategoriesData_categories {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? icon;
  @override
  final BuiltList<GGetCategoriesData_categories_children>? children;
  @override
  final GGetCategoriesData_categories_parent? parent;

  factory _$GGetCategoriesData_categories(
          [void Function(GGetCategoriesData_categoriesBuilder)? updates]) =>
      (new GGetCategoriesData_categoriesBuilder()..update(updates)).build();

  _$GGetCategoriesData_categories._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.icon,
      this.children,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCategoriesData_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCategoriesData_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetCategoriesData_categories', 'name');
  }

  @override
  GGetCategoriesData_categories rebuild(
          void Function(GGetCategoriesData_categoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoriesData_categoriesBuilder toBuilder() =>
      new GGetCategoriesData_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoriesData_categories &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        icon == other.icon &&
        children == other.children &&
        parent == other.parent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    name.hashCode),
                icon.hashCode),
            children.hashCode),
        parent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCategoriesData_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon)
          ..add('children', children)
          ..add('parent', parent))
        .toString();
  }
}

class GGetCategoriesData_categoriesBuilder
    implements
        Builder<GGetCategoriesData_categories,
            GGetCategoriesData_categoriesBuilder> {
  _$GGetCategoriesData_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  ListBuilder<GGetCategoriesData_categories_children>? _children;
  ListBuilder<GGetCategoriesData_categories_children> get children =>
      _$this._children ??=
          new ListBuilder<GGetCategoriesData_categories_children>();
  set children(ListBuilder<GGetCategoriesData_categories_children>? children) =>
      _$this._children = children;

  GGetCategoriesData_categories_parentBuilder? _parent;
  GGetCategoriesData_categories_parentBuilder get parent =>
      _$this._parent ??= new GGetCategoriesData_categories_parentBuilder();
  set parent(GGetCategoriesData_categories_parentBuilder? parent) =>
      _$this._parent = parent;

  GGetCategoriesData_categoriesBuilder() {
    GGetCategoriesData_categories._initializeBuilder(this);
  }

  GGetCategoriesData_categoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _icon = $v.icon;
      _children = $v.children?.toBuilder();
      _parent = $v.parent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoriesData_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoriesData_categories;
  }

  @override
  void update(void Function(GGetCategoriesData_categoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoriesData_categories build() {
    _$GGetCategoriesData_categories _$result;
    try {
      _$result = _$v ??
          new _$GGetCategoriesData_categories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetCategoriesData_categories', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetCategoriesData_categories', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetCategoriesData_categories', 'name'),
              icon: icon,
              children: _children?.build(),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'children';
        _children?.build();
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCategoriesData_categories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCategoriesData_categories_children
    extends GGetCategoriesData_categories_children {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? icon;
  @override
  final BuiltList<GGetCategoriesData_categories_children_children>? children;

  factory _$GGetCategoriesData_categories_children(
          [void Function(GGetCategoriesData_categories_childrenBuilder)?
              updates]) =>
      (new GGetCategoriesData_categories_childrenBuilder()..update(updates))
          .build();

  _$GGetCategoriesData_categories_children._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.icon,
      this.children})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCategoriesData_categories_children', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCategoriesData_categories_children', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetCategoriesData_categories_children', 'name');
  }

  @override
  GGetCategoriesData_categories_children rebuild(
          void Function(GGetCategoriesData_categories_childrenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoriesData_categories_childrenBuilder toBuilder() =>
      new GGetCategoriesData_categories_childrenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoriesData_categories_children &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        icon == other.icon &&
        children == other.children;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
            icon.hashCode),
        children.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetCategoriesData_categories_children')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon)
          ..add('children', children))
        .toString();
  }
}

class GGetCategoriesData_categories_childrenBuilder
    implements
        Builder<GGetCategoriesData_categories_children,
            GGetCategoriesData_categories_childrenBuilder> {
  _$GGetCategoriesData_categories_children? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  ListBuilder<GGetCategoriesData_categories_children_children>? _children;
  ListBuilder<GGetCategoriesData_categories_children_children> get children =>
      _$this._children ??=
          new ListBuilder<GGetCategoriesData_categories_children_children>();
  set children(
          ListBuilder<GGetCategoriesData_categories_children_children>?
              children) =>
      _$this._children = children;

  GGetCategoriesData_categories_childrenBuilder() {
    GGetCategoriesData_categories_children._initializeBuilder(this);
  }

  GGetCategoriesData_categories_childrenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _icon = $v.icon;
      _children = $v.children?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoriesData_categories_children other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoriesData_categories_children;
  }

  @override
  void update(
      void Function(GGetCategoriesData_categories_childrenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoriesData_categories_children build() {
    _$GGetCategoriesData_categories_children _$result;
    try {
      _$result = _$v ??
          new _$GGetCategoriesData_categories_children._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetCategoriesData_categories_children', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetCategoriesData_categories_children', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetCategoriesData_categories_children', 'name'),
              icon: icon,
              children: _children?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'children';
        _children?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCategoriesData_categories_children',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCategoriesData_categories_children_children
    extends GGetCategoriesData_categories_children_children {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GGetCategoriesData_categories_children_children(
          [void Function(
                  GGetCategoriesData_categories_children_childrenBuilder)?
              updates]) =>
      (new GGetCategoriesData_categories_children_childrenBuilder()
            ..update(updates))
          .build();

  _$GGetCategoriesData_categories_children_children._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetCategoriesData_categories_children_children', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCategoriesData_categories_children_children', 'id');
  }

  @override
  GGetCategoriesData_categories_children_children rebuild(
          void Function(GGetCategoriesData_categories_children_childrenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoriesData_categories_children_childrenBuilder toBuilder() =>
      new GGetCategoriesData_categories_children_childrenBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoriesData_categories_children_children &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetCategoriesData_categories_children_children')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GGetCategoriesData_categories_children_childrenBuilder
    implements
        Builder<GGetCategoriesData_categories_children_children,
            GGetCategoriesData_categories_children_childrenBuilder> {
  _$GGetCategoriesData_categories_children_children? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetCategoriesData_categories_children_childrenBuilder() {
    GGetCategoriesData_categories_children_children._initializeBuilder(this);
  }

  GGetCategoriesData_categories_children_childrenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoriesData_categories_children_children other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoriesData_categories_children_children;
  }

  @override
  void update(
      void Function(GGetCategoriesData_categories_children_childrenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoriesData_categories_children_children build() {
    final _$result = _$v ??
        new _$GGetCategoriesData_categories_children_children._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetCategoriesData_categories_children_children',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCategoriesData_categories_children_children', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetCategoriesData_categories_parent
    extends GGetCategoriesData_categories_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetCategoriesData_categories_parent(
          [void Function(GGetCategoriesData_categories_parentBuilder)?
              updates]) =>
      (new GGetCategoriesData_categories_parentBuilder()..update(updates))
          .build();

  _$GGetCategoriesData_categories_parent._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCategoriesData_categories_parent', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCategoriesData_categories_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetCategoriesData_categories_parent', 'name');
  }

  @override
  GGetCategoriesData_categories_parent rebuild(
          void Function(GGetCategoriesData_categories_parentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoriesData_categories_parentBuilder toBuilder() =>
      new GGetCategoriesData_categories_parentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoriesData_categories_parent &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCategoriesData_categories_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetCategoriesData_categories_parentBuilder
    implements
        Builder<GGetCategoriesData_categories_parent,
            GGetCategoriesData_categories_parentBuilder> {
  _$GGetCategoriesData_categories_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetCategoriesData_categories_parentBuilder() {
    GGetCategoriesData_categories_parent._initializeBuilder(this);
  }

  GGetCategoriesData_categories_parentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoriesData_categories_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoriesData_categories_parent;
  }

  @override
  void update(
      void Function(GGetCategoriesData_categories_parentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoriesData_categories_parent build() {
    final _$result = _$v ??
        new _$GGetCategoriesData_categories_parent._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetCategoriesData_categories_parent', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCategoriesData_categories_parent', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetCategoriesData_categories_parent', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
