// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'surah_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SurahInfo _$SurahInfoFromJson(Map<String, dynamic> json) {
  return SurahInfoResultData.fromJson(json);
}

/// @nodoc
class _$SurahInfoTearOff {
  const _$SurahInfoTearOff();

// ignore: unused_element
  SurahInfoResultData surahInfoResultData(
      String translation,
      String arabic,
      String latin,
      @JsonKey(name: "ayah_count") int ayahCount,
      int index,
      String opening,
      String closing) {
    return SurahInfoResultData(
      translation,
      arabic,
      latin,
      ayahCount,
      index,
      opening,
      closing,
    );
  }

// ignore: unused_element
  SurahInfo fromJson(Map<String, Object> json) {
    return SurahInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SurahInfo = _$SurahInfoTearOff();

/// @nodoc
mixin _$SurahInfo {
  String get translation;
  String get arabic;
  String get latin;
  @JsonKey(name: "ayah_count")
  int get ayahCount;
  int get index;
  String get opening;
  String get closing;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result surahInfoResultData(
            String translation,
            String arabic,
            String latin,
            @JsonKey(name: "ayah_count") int ayahCount,
            int index,
            String opening,
            String closing),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result surahInfoResultData(
        String translation,
        String arabic,
        String latin,
        @JsonKey(name: "ayah_count") int ayahCount,
        int index,
        String opening,
        String closing),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result surahInfoResultData(SurahInfoResultData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result surahInfoResultData(SurahInfoResultData value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $SurahInfoCopyWith<SurahInfo> get copyWith;
}

/// @nodoc
abstract class $SurahInfoCopyWith<$Res> {
  factory $SurahInfoCopyWith(SurahInfo value, $Res Function(SurahInfo) then) =
      _$SurahInfoCopyWithImpl<$Res>;
  $Res call(
      {String translation,
      String arabic,
      String latin,
      @JsonKey(name: "ayah_count") int ayahCount,
      int index,
      String opening,
      String closing});
}

/// @nodoc
class _$SurahInfoCopyWithImpl<$Res> implements $SurahInfoCopyWith<$Res> {
  _$SurahInfoCopyWithImpl(this._value, this._then);

  final SurahInfo _value;
  // ignore: unused_field
  final $Res Function(SurahInfo) _then;

  @override
  $Res call({
    Object translation = freezed,
    Object arabic = freezed,
    Object latin = freezed,
    Object ayahCount = freezed,
    Object index = freezed,
    Object opening = freezed,
    Object closing = freezed,
  }) {
    return _then(_value.copyWith(
      translation:
          translation == freezed ? _value.translation : translation as String,
      arabic: arabic == freezed ? _value.arabic : arabic as String,
      latin: latin == freezed ? _value.latin : latin as String,
      ayahCount: ayahCount == freezed ? _value.ayahCount : ayahCount as int,
      index: index == freezed ? _value.index : index as int,
      opening: opening == freezed ? _value.opening : opening as String,
      closing: closing == freezed ? _value.closing : closing as String,
    ));
  }
}

/// @nodoc
abstract class $SurahInfoResultDataCopyWith<$Res>
    implements $SurahInfoCopyWith<$Res> {
  factory $SurahInfoResultDataCopyWith(
          SurahInfoResultData value, $Res Function(SurahInfoResultData) then) =
      _$SurahInfoResultDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String translation,
      String arabic,
      String latin,
      @JsonKey(name: "ayah_count") int ayahCount,
      int index,
      String opening,
      String closing});
}

/// @nodoc
class _$SurahInfoResultDataCopyWithImpl<$Res>
    extends _$SurahInfoCopyWithImpl<$Res>
    implements $SurahInfoResultDataCopyWith<$Res> {
  _$SurahInfoResultDataCopyWithImpl(
      SurahInfoResultData _value, $Res Function(SurahInfoResultData) _then)
      : super(_value, (v) => _then(v as SurahInfoResultData));

  @override
  SurahInfoResultData get _value => super._value as SurahInfoResultData;

  @override
  $Res call({
    Object translation = freezed,
    Object arabic = freezed,
    Object latin = freezed,
    Object ayahCount = freezed,
    Object index = freezed,
    Object opening = freezed,
    Object closing = freezed,
  }) {
    return _then(SurahInfoResultData(
      translation == freezed ? _value.translation : translation as String,
      arabic == freezed ? _value.arabic : arabic as String,
      latin == freezed ? _value.latin : latin as String,
      ayahCount == freezed ? _value.ayahCount : ayahCount as int,
      index == freezed ? _value.index : index as int,
      opening == freezed ? _value.opening : opening as String,
      closing == freezed ? _value.closing : closing as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SurahInfoResultData implements SurahInfoResultData {
  _$SurahInfoResultData(
      this.translation,
      this.arabic,
      this.latin,
      @JsonKey(name: "ayah_count") this.ayahCount,
      this.index,
      this.opening,
      this.closing)
      : assert(translation != null),
        assert(arabic != null),
        assert(latin != null),
        assert(ayahCount != null),
        assert(index != null),
        assert(opening != null),
        assert(closing != null);

  factory _$SurahInfoResultData.fromJson(Map<String, dynamic> json) =>
      _$_$SurahInfoResultDataFromJson(json);

  @override
  final String translation;
  @override
  final String arabic;
  @override
  final String latin;
  @override
  @JsonKey(name: "ayah_count")
  final int ayahCount;
  @override
  final int index;
  @override
  final String opening;
  @override
  final String closing;

  @override
  String toString() {
    return 'SurahInfo.surahInfoResultData(translation: $translation, arabic: $arabic, latin: $latin, ayahCount: $ayahCount, index: $index, opening: $opening, closing: $closing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurahInfoResultData &&
            (identical(other.translation, translation) ||
                const DeepCollectionEquality()
                    .equals(other.translation, translation)) &&
            (identical(other.arabic, arabic) ||
                const DeepCollectionEquality().equals(other.arabic, arabic)) &&
            (identical(other.latin, latin) ||
                const DeepCollectionEquality().equals(other.latin, latin)) &&
            (identical(other.ayahCount, ayahCount) ||
                const DeepCollectionEquality()
                    .equals(other.ayahCount, ayahCount)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.opening, opening) ||
                const DeepCollectionEquality()
                    .equals(other.opening, opening)) &&
            (identical(other.closing, closing) ||
                const DeepCollectionEquality().equals(other.closing, closing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(translation) ^
      const DeepCollectionEquality().hash(arabic) ^
      const DeepCollectionEquality().hash(latin) ^
      const DeepCollectionEquality().hash(ayahCount) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(opening) ^
      const DeepCollectionEquality().hash(closing);

  @override
  $SurahInfoResultDataCopyWith<SurahInfoResultData> get copyWith =>
      _$SurahInfoResultDataCopyWithImpl<SurahInfoResultData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result surahInfoResultData(
            String translation,
            String arabic,
            String latin,
            @JsonKey(name: "ayah_count") int ayahCount,
            int index,
            String opening,
            String closing),
  }) {
    assert(surahInfoResultData != null);
    return surahInfoResultData(
        translation, arabic, latin, ayahCount, index, opening, closing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result surahInfoResultData(
        String translation,
        String arabic,
        String latin,
        @JsonKey(name: "ayah_count") int ayahCount,
        int index,
        String opening,
        String closing),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahInfoResultData != null) {
      return surahInfoResultData(
          translation, arabic, latin, ayahCount, index, opening, closing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result surahInfoResultData(SurahInfoResultData value),
  }) {
    assert(surahInfoResultData != null);
    return surahInfoResultData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result surahInfoResultData(SurahInfoResultData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahInfoResultData != null) {
      return surahInfoResultData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SurahInfoResultDataToJson(this);
  }
}

abstract class SurahInfoResultData implements SurahInfo {
  factory SurahInfoResultData(
      String translation,
      String arabic,
      String latin,
      @JsonKey(name: "ayah_count") int ayahCount,
      int index,
      String opening,
      String closing) = _$SurahInfoResultData;

  factory SurahInfoResultData.fromJson(Map<String, dynamic> json) =
      _$SurahInfoResultData.fromJson;

  @override
  String get translation;
  @override
  String get arabic;
  @override
  String get latin;
  @override
  @JsonKey(name: "ayah_count")
  int get ayahCount;
  @override
  int get index;
  @override
  String get opening;
  @override
  String get closing;
  @override
  $SurahInfoResultDataCopyWith<SurahInfoResultData> get copyWith;
}
