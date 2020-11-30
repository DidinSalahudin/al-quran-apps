// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'asmaul_husna_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AsmaulHusnaData _$AsmaulHusnaDataFromJson(Map<String, dynamic> json) {
  return AsmaulHusnaDataResultData.fromJson(json);
}

/// @nodoc
class _$AsmaulHusnaDataTearOff {
  const _$AsmaulHusnaDataTearOff();

// ignore: unused_element
  AsmaulHusnaDataResultData asmaulHusnaDataResultData(
      String index,
      String latin,
      String arabic,
      @JsonKey(name: "translation_id") String translationId,
      @JsonKey(name: "translation_en") String translationEn) {
    return AsmaulHusnaDataResultData(
      index,
      latin,
      arabic,
      translationId,
      translationEn,
    );
  }

// ignore: unused_element
  AsmaulHusnaData fromJson(Map<String, Object> json) {
    return AsmaulHusnaData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AsmaulHusnaData = _$AsmaulHusnaDataTearOff();

/// @nodoc
mixin _$AsmaulHusnaData {
  String get index;
  String get latin;
  String get arabic;
  @JsonKey(name: "translation_id")
  String get translationId;
  @JsonKey(name: "translation_en")
  String get translationEn;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result asmaulHusnaDataResultData(
            String index,
            String latin,
            String arabic,
            @JsonKey(name: "translation_id") String translationId,
            @JsonKey(name: "translation_en") String translationEn),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result asmaulHusnaDataResultData(
        String index,
        String latin,
        String arabic,
        @JsonKey(name: "translation_id") String translationId,
        @JsonKey(name: "translation_en") String translationEn),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result asmaulHusnaDataResultData(AsmaulHusnaDataResultData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result asmaulHusnaDataResultData(AsmaulHusnaDataResultData value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $AsmaulHusnaDataCopyWith<AsmaulHusnaData> get copyWith;
}

/// @nodoc
abstract class $AsmaulHusnaDataCopyWith<$Res> {
  factory $AsmaulHusnaDataCopyWith(
          AsmaulHusnaData value, $Res Function(AsmaulHusnaData) then) =
      _$AsmaulHusnaDataCopyWithImpl<$Res>;
  $Res call(
      {String index,
      String latin,
      String arabic,
      @JsonKey(name: "translation_id") String translationId,
      @JsonKey(name: "translation_en") String translationEn});
}

/// @nodoc
class _$AsmaulHusnaDataCopyWithImpl<$Res>
    implements $AsmaulHusnaDataCopyWith<$Res> {
  _$AsmaulHusnaDataCopyWithImpl(this._value, this._then);

  final AsmaulHusnaData _value;
  // ignore: unused_field
  final $Res Function(AsmaulHusnaData) _then;

  @override
  $Res call({
    Object index = freezed,
    Object latin = freezed,
    Object arabic = freezed,
    Object translationId = freezed,
    Object translationEn = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as String,
      latin: latin == freezed ? _value.latin : latin as String,
      arabic: arabic == freezed ? _value.arabic : arabic as String,
      translationId: translationId == freezed
          ? _value.translationId
          : translationId as String,
      translationEn: translationEn == freezed
          ? _value.translationEn
          : translationEn as String,
    ));
  }
}

/// @nodoc
abstract class $AsmaulHusnaDataResultDataCopyWith<$Res>
    implements $AsmaulHusnaDataCopyWith<$Res> {
  factory $AsmaulHusnaDataResultDataCopyWith(AsmaulHusnaDataResultData value,
          $Res Function(AsmaulHusnaDataResultData) then) =
      _$AsmaulHusnaDataResultDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String index,
      String latin,
      String arabic,
      @JsonKey(name: "translation_id") String translationId,
      @JsonKey(name: "translation_en") String translationEn});
}

/// @nodoc
class _$AsmaulHusnaDataResultDataCopyWithImpl<$Res>
    extends _$AsmaulHusnaDataCopyWithImpl<$Res>
    implements $AsmaulHusnaDataResultDataCopyWith<$Res> {
  _$AsmaulHusnaDataResultDataCopyWithImpl(AsmaulHusnaDataResultData _value,
      $Res Function(AsmaulHusnaDataResultData) _then)
      : super(_value, (v) => _then(v as AsmaulHusnaDataResultData));

  @override
  AsmaulHusnaDataResultData get _value =>
      super._value as AsmaulHusnaDataResultData;

  @override
  $Res call({
    Object index = freezed,
    Object latin = freezed,
    Object arabic = freezed,
    Object translationId = freezed,
    Object translationEn = freezed,
  }) {
    return _then(AsmaulHusnaDataResultData(
      index == freezed ? _value.index : index as String,
      latin == freezed ? _value.latin : latin as String,
      arabic == freezed ? _value.arabic : arabic as String,
      translationId == freezed ? _value.translationId : translationId as String,
      translationEn == freezed ? _value.translationEn : translationEn as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$AsmaulHusnaDataResultData implements AsmaulHusnaDataResultData {
  _$AsmaulHusnaDataResultData(
      this.index,
      this.latin,
      this.arabic,
      @JsonKey(name: "translation_id") this.translationId,
      @JsonKey(name: "translation_en") this.translationEn)
      : assert(index != null),
        assert(latin != null),
        assert(arabic != null),
        assert(translationId != null),
        assert(translationEn != null);

  factory _$AsmaulHusnaDataResultData.fromJson(Map<String, dynamic> json) =>
      _$_$AsmaulHusnaDataResultDataFromJson(json);

  @override
  final String index;
  @override
  final String latin;
  @override
  final String arabic;
  @override
  @JsonKey(name: "translation_id")
  final String translationId;
  @override
  @JsonKey(name: "translation_en")
  final String translationEn;

  @override
  String toString() {
    return 'AsmaulHusnaData.asmaulHusnaDataResultData(index: $index, latin: $latin, arabic: $arabic, translationId: $translationId, translationEn: $translationEn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AsmaulHusnaDataResultData &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.latin, latin) ||
                const DeepCollectionEquality().equals(other.latin, latin)) &&
            (identical(other.arabic, arabic) ||
                const DeepCollectionEquality().equals(other.arabic, arabic)) &&
            (identical(other.translationId, translationId) ||
                const DeepCollectionEquality()
                    .equals(other.translationId, translationId)) &&
            (identical(other.translationEn, translationEn) ||
                const DeepCollectionEquality()
                    .equals(other.translationEn, translationEn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(latin) ^
      const DeepCollectionEquality().hash(arabic) ^
      const DeepCollectionEquality().hash(translationId) ^
      const DeepCollectionEquality().hash(translationEn);

  @override
  $AsmaulHusnaDataResultDataCopyWith<AsmaulHusnaDataResultData> get copyWith =>
      _$AsmaulHusnaDataResultDataCopyWithImpl<AsmaulHusnaDataResultData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result asmaulHusnaDataResultData(
            String index,
            String latin,
            String arabic,
            @JsonKey(name: "translation_id") String translationId,
            @JsonKey(name: "translation_en") String translationEn),
  }) {
    assert(asmaulHusnaDataResultData != null);
    return asmaulHusnaDataResultData(
        index, latin, arabic, translationId, translationEn);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result asmaulHusnaDataResultData(
        String index,
        String latin,
        String arabic,
        @JsonKey(name: "translation_id") String translationId,
        @JsonKey(name: "translation_en") String translationEn),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (asmaulHusnaDataResultData != null) {
      return asmaulHusnaDataResultData(
          index, latin, arabic, translationId, translationEn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result asmaulHusnaDataResultData(AsmaulHusnaDataResultData value),
  }) {
    assert(asmaulHusnaDataResultData != null);
    return asmaulHusnaDataResultData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result asmaulHusnaDataResultData(AsmaulHusnaDataResultData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (asmaulHusnaDataResultData != null) {
      return asmaulHusnaDataResultData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AsmaulHusnaDataResultDataToJson(this);
  }
}

abstract class AsmaulHusnaDataResultData implements AsmaulHusnaData {
  factory AsmaulHusnaDataResultData(
          String index,
          String latin,
          String arabic,
          @JsonKey(name: "translation_id") String translationId,
          @JsonKey(name: "translation_en") String translationEn) =
      _$AsmaulHusnaDataResultData;

  factory AsmaulHusnaDataResultData.fromJson(Map<String, dynamic> json) =
      _$AsmaulHusnaDataResultData.fromJson;

  @override
  String get index;
  @override
  String get latin;
  @override
  String get arabic;
  @override
  @JsonKey(name: "translation_id")
  String get translationId;
  @override
  @JsonKey(name: "translation_en")
  String get translationEn;
  @override
  $AsmaulHusnaDataResultDataCopyWith<AsmaulHusnaDataResultData> get copyWith;
}
