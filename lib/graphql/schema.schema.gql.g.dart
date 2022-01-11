// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAuthorData> _$gAuthorDataSerializer = new _$GAuthorDataSerializer();
Serializer<GCartItemData> _$gCartItemDataSerializer =
    new _$GCartItemDataSerializer();
Serializer<GCategoryData> _$gCategoryDataSerializer =
    new _$GCategoryDataSerializer();
Serializer<GOrderData> _$gOrderDataSerializer = new _$GOrderDataSerializer();
Serializer<GOrderItemData> _$gOrderItemDataSerializer =
    new _$GOrderItemDataSerializer();
Serializer<GProductData> _$gProductDataSerializer =
    new _$GProductDataSerializer();
Serializer<GRatingData> _$gRatingDataSerializer = new _$GRatingDataSerializer();
Serializer<GRegisterData> _$gRegisterDataSerializer =
    new _$GRegisterDataSerializer();
Serializer<GUserData> _$gUserDataSerializer = new _$GUserDataSerializer();

class _$GAuthorDataSerializer implements StructuredSerializer<GAuthorData> {
  @override
  final Iterable<Type> types = const [GAuthorData, _$GAuthorData];
  @override
  final String wireName = 'GAuthorData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAuthorData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAuthorData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAuthorDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCartItemDataSerializer implements StructuredSerializer<GCartItemData> {
  @override
  final Iterable<Type> types = const [GCartItemData, _$GCartItemData];
  @override
  final String wireName = 'GCartItemData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCartItemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCartItemData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$GCategoryDataSerializer implements StructuredSerializer<GCategoryData> {
  @override
  final Iterable<Type> types = const [GCategoryData, _$GCategoryData];
  @override
  final String wireName = 'GCategoryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCategoryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentID;
    if (value != null) {
      result
        ..add('parentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCategoryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCategoryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parentID':
          result.parentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GOrderDataSerializer implements StructuredSerializer<GOrderData> {
  @override
  final Iterable<Type> types = const [GOrderData, _$GOrderData];
  @override
  final String wireName = 'GOrderData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOrderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GOrderItemData)])),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentID;
    if (value != null) {
      result
        ..add('paymentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GOrderData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOrderDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GOrderItemData)]))!
              as BuiltList<Object?>);
          break;
        case 'paymentID':
          result.paymentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GOrderItemDataSerializer
    implements StructuredSerializer<GOrderItemData> {
  @override
  final Iterable<Type> types = const [GOrderItemData, _$GOrderItemData];
  @override
  final String wireName = 'GOrderItemData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOrderItemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'discount',
      serializers.serialize(object.discount,
          specifiedType: const FullType(double)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOrderItemData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOrderItemDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$GProductDataSerializer implements StructuredSerializer<GProductData> {
  @override
  final Iterable<Type> types = const [GProductData, _$GProductData];
  @override
  final String wireName = 'GProductData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProductData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'discount',
      serializers.serialize(object.discount,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authors;
    if (value != null) {
      result
        ..add('authors')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProductData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authors':
          result.authors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRatingDataSerializer implements StructuredSerializer<GRatingData> {
  @override
  final Iterable<Type> types = const [GRatingData, _$GRatingData];
  @override
  final String wireName = 'GRatingData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRatingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GRatingData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRatingDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterDataSerializer implements StructuredSerializer<GRegisterData> {
  @override
  final Iterable<Type> types = const [GRegisterData, _$GRegisterData];
  @override
  final String wireName = 'GRegisterData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRegisterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRegisterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegisterDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDataSerializer implements StructuredSerializer<GUserData> {
  @override
  final Iterable<Type> types = const [GUserData, _$GUserData];
  @override
  final String wireName = 'GUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUserData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthorData extends GAuthorData {
  @override
  final String? name;
  @override
  final String? avatar;
  @override
  final String? description;

  factory _$GAuthorData([void Function(GAuthorDataBuilder)? updates]) =>
      (new GAuthorDataBuilder()..update(updates)).build();

  _$GAuthorData._({this.name, this.avatar, this.description}) : super._();

  @override
  GAuthorData rebuild(void Function(GAuthorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthorDataBuilder toBuilder() => new GAuthorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAuthorData &&
        name == other.name &&
        avatar == other.avatar &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), avatar.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAuthorData')
          ..add('name', name)
          ..add('avatar', avatar)
          ..add('description', description))
        .toString();
  }
}

class GAuthorDataBuilder implements Builder<GAuthorData, GAuthorDataBuilder> {
  _$GAuthorData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GAuthorDataBuilder();

  GAuthorDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _avatar = $v.avatar;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAuthorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAuthorData;
  }

  @override
  void update(void Function(GAuthorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAuthorData build() {
    final _$result = _$v ??
        new _$GAuthorData._(
            name: name, avatar: avatar, description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemData extends GCartItemData {
  @override
  final int quantity;
  @override
  final String id;

  factory _$GCartItemData([void Function(GCartItemDataBuilder)? updates]) =>
      (new GCartItemDataBuilder()..update(updates)).build();

  _$GCartItemData._({required this.quantity, required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        quantity, 'GCartItemData', 'quantity');
    BuiltValueNullFieldError.checkNotNull(id, 'GCartItemData', 'id');
  }

  @override
  GCartItemData rebuild(void Function(GCartItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemDataBuilder toBuilder() => new GCartItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemData &&
        quantity == other.quantity &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, quantity.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCartItemData')
          ..add('quantity', quantity)
          ..add('id', id))
        .toString();
  }
}

class GCartItemDataBuilder
    implements Builder<GCartItemData, GCartItemDataBuilder> {
  _$GCartItemData? _$v;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCartItemDataBuilder();

  GCartItemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantity = $v.quantity;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCartItemData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemData;
  }

  @override
  void update(void Function(GCartItemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemData build() {
    final _$result = _$v ??
        new _$GCartItemData._(
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'GCartItemData', 'quantity'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCartItemData', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GCategoryData extends GCategoryData {
  @override
  final String? name;
  @override
  final String? parentID;
  @override
  final String? icon;

  factory _$GCategoryData([void Function(GCategoryDataBuilder)? updates]) =>
      (new GCategoryDataBuilder()..update(updates)).build();

  _$GCategoryData._({this.name, this.parentID, this.icon}) : super._();

  @override
  GCategoryData rebuild(void Function(GCategoryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoryDataBuilder toBuilder() => new GCategoryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoryData &&
        name == other.name &&
        parentID == other.parentID &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), parentID.hashCode), icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCategoryData')
          ..add('name', name)
          ..add('parentID', parentID)
          ..add('icon', icon))
        .toString();
  }
}

class GCategoryDataBuilder
    implements Builder<GCategoryData, GCategoryDataBuilder> {
  _$GCategoryData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _parentID;
  String? get parentID => _$this._parentID;
  set parentID(String? parentID) => _$this._parentID = parentID;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  GCategoryDataBuilder();

  GCategoryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _parentID = $v.parentID;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCategoryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoryData;
  }

  @override
  void update(void Function(GCategoryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCategoryData build() {
    final _$result = _$v ??
        new _$GCategoryData._(name: name, parentID: parentID, icon: icon);
    replace(_$result);
    return _$result;
  }
}

class _$GOrderData extends GOrderData {
  @override
  final String name;
  @override
  final String address;
  @override
  final String? status;
  @override
  final BuiltList<GOrderItemData> items;
  @override
  final String? paymentID;
  @override
  final String phone;
  @override
  final double total;

  factory _$GOrderData([void Function(GOrderDataBuilder)? updates]) =>
      (new GOrderDataBuilder()..update(updates)).build();

  _$GOrderData._(
      {required this.name,
      required this.address,
      this.status,
      required this.items,
      this.paymentID,
      required this.phone,
      required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'GOrderData', 'name');
    BuiltValueNullFieldError.checkNotNull(address, 'GOrderData', 'address');
    BuiltValueNullFieldError.checkNotNull(items, 'GOrderData', 'items');
    BuiltValueNullFieldError.checkNotNull(phone, 'GOrderData', 'phone');
    BuiltValueNullFieldError.checkNotNull(total, 'GOrderData', 'total');
  }

  @override
  GOrderData rebuild(void Function(GOrderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOrderDataBuilder toBuilder() => new GOrderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOrderData &&
        name == other.name &&
        address == other.address &&
        status == other.status &&
        items == other.items &&
        paymentID == other.paymentID &&
        phone == other.phone &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), address.hashCode),
                        status.hashCode),
                    items.hashCode),
                paymentID.hashCode),
            phone.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GOrderData')
          ..add('name', name)
          ..add('address', address)
          ..add('status', status)
          ..add('items', items)
          ..add('paymentID', paymentID)
          ..add('phone', phone)
          ..add('total', total))
        .toString();
  }
}

class GOrderDataBuilder implements Builder<GOrderData, GOrderDataBuilder> {
  _$GOrderData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<GOrderItemData>? _items;
  ListBuilder<GOrderItemData> get items =>
      _$this._items ??= new ListBuilder<GOrderItemData>();
  set items(ListBuilder<GOrderItemData>? items) => _$this._items = items;

  String? _paymentID;
  String? get paymentID => _$this._paymentID;
  set paymentID(String? paymentID) => _$this._paymentID = paymentID;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  GOrderDataBuilder();

  GOrderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _address = $v.address;
      _status = $v.status;
      _items = $v.items.toBuilder();
      _paymentID = $v.paymentID;
      _phone = $v.phone;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOrderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOrderData;
  }

  @override
  void update(void Function(GOrderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GOrderData build() {
    _$GOrderData _$result;
    try {
      _$result = _$v ??
          new _$GOrderData._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GOrderData', 'name'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'GOrderData', 'address'),
              status: status,
              items: items.build(),
              paymentID: paymentID,
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, 'GOrderData', 'phone'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'GOrderData', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GOrderData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOrderItemData extends GOrderItemData {
  @override
  final int quantity;
  @override
  final double price;
  @override
  final double discount;
  @override
  final String id;

  factory _$GOrderItemData([void Function(GOrderItemDataBuilder)? updates]) =>
      (new GOrderItemDataBuilder()..update(updates)).build();

  _$GOrderItemData._(
      {required this.quantity,
      required this.price,
      required this.discount,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        quantity, 'GOrderItemData', 'quantity');
    BuiltValueNullFieldError.checkNotNull(price, 'GOrderItemData', 'price');
    BuiltValueNullFieldError.checkNotNull(
        discount, 'GOrderItemData', 'discount');
    BuiltValueNullFieldError.checkNotNull(id, 'GOrderItemData', 'id');
  }

  @override
  GOrderItemData rebuild(void Function(GOrderItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOrderItemDataBuilder toBuilder() =>
      new GOrderItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOrderItemData &&
        quantity == other.quantity &&
        price == other.price &&
        discount == other.discount &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, quantity.hashCode), price.hashCode), discount.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GOrderItemData')
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('discount', discount)
          ..add('id', id))
        .toString();
  }
}

class GOrderItemDataBuilder
    implements Builder<GOrderItemData, GOrderItemDataBuilder> {
  _$GOrderItemData? _$v;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GOrderItemDataBuilder();

  GOrderItemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantity = $v.quantity;
      _price = $v.price;
      _discount = $v.discount;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOrderItemData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOrderItemData;
  }

  @override
  void update(void Function(GOrderItemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GOrderItemData build() {
    final _$result = _$v ??
        new _$GOrderItemData._(
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'GOrderItemData', 'quantity'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'GOrderItemData', 'price'),
            discount: BuiltValueNullFieldError.checkNotNull(
                discount, 'GOrderItemData', 'discount'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GOrderItemData', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GProductData extends GProductData {
  @override
  final String name;
  @override
  final double price;
  @override
  final double discount;
  @override
  final String? description;
  @override
  final String? images;
  @override
  final BuiltList<String>? authors;
  @override
  final String? category;

  factory _$GProductData([void Function(GProductDataBuilder)? updates]) =>
      (new GProductDataBuilder()..update(updates)).build();

  _$GProductData._(
      {required this.name,
      required this.price,
      required this.discount,
      this.description,
      this.images,
      this.authors,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'GProductData', 'name');
    BuiltValueNullFieldError.checkNotNull(price, 'GProductData', 'price');
    BuiltValueNullFieldError.checkNotNull(discount, 'GProductData', 'discount');
  }

  @override
  GProductData rebuild(void Function(GProductDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDataBuilder toBuilder() => new GProductDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductData &&
        name == other.name &&
        price == other.price &&
        discount == other.discount &&
        description == other.description &&
        images == other.images &&
        authors == other.authors &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), price.hashCode),
                        discount.hashCode),
                    description.hashCode),
                images.hashCode),
            authors.hashCode),
        category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProductData')
          ..add('name', name)
          ..add('price', price)
          ..add('discount', discount)
          ..add('description', description)
          ..add('images', images)
          ..add('authors', authors)
          ..add('category', category))
        .toString();
  }
}

class GProductDataBuilder
    implements Builder<GProductData, GProductDataBuilder> {
  _$GProductData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  ListBuilder<String>? _authors;
  ListBuilder<String> get authors =>
      _$this._authors ??= new ListBuilder<String>();
  set authors(ListBuilder<String>? authors) => _$this._authors = authors;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  GProductDataBuilder();

  GProductDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _discount = $v.discount;
      _description = $v.description;
      _images = $v.images;
      _authors = $v.authors?.toBuilder();
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductData;
  }

  @override
  void update(void Function(GProductDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductData build() {
    _$GProductData _$result;
    try {
      _$result = _$v ??
          new _$GProductData._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GProductData', 'name'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GProductData', 'price'),
              discount: BuiltValueNullFieldError.checkNotNull(
                  discount, 'GProductData', 'discount'),
              description: description,
              images: images,
              authors: _authors?.build(),
              category: category);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        _authors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GProductData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRatingData extends GRatingData {
  @override
  final String? title;
  @override
  final String? comment;
  @override
  final int? rate;

  factory _$GRatingData([void Function(GRatingDataBuilder)? updates]) =>
      (new GRatingDataBuilder()..update(updates)).build();

  _$GRatingData._({this.title, this.comment, this.rate}) : super._();

  @override
  GRatingData rebuild(void Function(GRatingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRatingDataBuilder toBuilder() => new GRatingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRatingData &&
        title == other.title &&
        comment == other.comment &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), comment.hashCode), rate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRatingData')
          ..add('title', title)
          ..add('comment', comment)
          ..add('rate', rate))
        .toString();
  }
}

class GRatingDataBuilder implements Builder<GRatingData, GRatingDataBuilder> {
  _$GRatingData? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _rate;
  int? get rate => _$this._rate;
  set rate(int? rate) => _$this._rate = rate;

  GRatingDataBuilder();

  GRatingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _comment = $v.comment;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRatingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRatingData;
  }

  @override
  void update(void Function(GRatingDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRatingData build() {
    final _$result =
        _$v ?? new _$GRatingData._(title: title, comment: comment, rate: rate);
    replace(_$result);
    return _$result;
  }
}

class _$GRegisterData extends GRegisterData {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  factory _$GRegisterData([void Function(GRegisterDataBuilder)? updates]) =>
      (new GRegisterDataBuilder()..update(updates)).build();

  _$GRegisterData._(
      {required this.name, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'GRegisterData', 'name');
    BuiltValueNullFieldError.checkNotNull(email, 'GRegisterData', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GRegisterData', 'password');
  }

  @override
  GRegisterData rebuild(void Function(GRegisterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterDataBuilder toBuilder() => new GRegisterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterData &&
        name == other.name &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegisterData')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GRegisterDataBuilder
    implements Builder<GRegisterData, GRegisterDataBuilder> {
  _$GRegisterData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GRegisterDataBuilder();

  GRegisterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegisterData;
  }

  @override
  void update(void Function(GRegisterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegisterData build() {
    final _$result = _$v ??
        new _$GRegisterData._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GRegisterData', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GRegisterData', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GRegisterData', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpload extends GUpload {
  @override
  final String value;

  factory _$GUpload([void Function(GUploadBuilder)? updates]) =>
      (new GUploadBuilder()..update(updates)).build();

  _$GUpload._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GUpload', 'value');
  }

  @override
  GUpload rebuild(void Function(GUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadBuilder toBuilder() => new GUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpload && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpload')..add('value', value))
        .toString();
  }
}

class GUploadBuilder implements Builder<GUpload, GUploadBuilder> {
  _$GUpload? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUploadBuilder();

  GUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpload;
  }

  @override
  void update(void Function(GUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpload build() {
    final _$result = _$v ??
        new _$GUpload._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GUpload', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserData extends GUserData {
  @override
  final String name;
  @override
  final String email;
  @override
  final String? password;
  @override
  final bool? isAdmin;

  factory _$GUserData([void Function(GUserDataBuilder)? updates]) =>
      (new GUserDataBuilder()..update(updates)).build();

  _$GUserData._(
      {required this.name, required this.email, this.password, this.isAdmin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'GUserData', 'name');
    BuiltValueNullFieldError.checkNotNull(email, 'GUserData', 'email');
  }

  @override
  GUserData rebuild(void Function(GUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDataBuilder toBuilder() => new GUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData &&
        name == other.name &&
        email == other.email &&
        password == other.password &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), email.hashCode), password.hashCode),
        isAdmin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserData')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('isAdmin', isAdmin))
        .toString();
  }
}

class GUserDataBuilder implements Builder<GUserData, GUserDataBuilder> {
  _$GUserData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  GUserDataBuilder();

  GUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _isAdmin = $v.isAdmin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData;
  }

  @override
  void update(void Function(GUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserData build() {
    final _$result = _$v ??
        new _$GUserData._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GUserData', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GUserData', 'email'),
            password: password,
            isAdmin: isAdmin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
