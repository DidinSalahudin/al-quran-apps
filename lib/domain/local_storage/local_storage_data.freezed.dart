// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'local_storage_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocalStorageData _$LocalStorageDataFromJson(Map<String, dynamic> json) {
  return LocalStorageDataResultData.fromJson(json);
}

/// @nodoc
class _$LocalStorageDataTearOff {
  const _$LocalStorageDataTearOff();

// ignore: unused_element
  LocalStorageDataResultData localStorageDataResultData(
      String namaSurah, String noSurah, int noAyat) {
    return LocalStorageDataResultData(
      namaSurah,
      noSurah,
      noAyat,
    );
  }

// ignore: unused_element
  LocalStorageData fromJson(Map<String, Object> json) {
    return LocalStorageData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalStorageData = _$LocalStorageDataTearOff();

/// @nodoc
mixin _$LocalStorageData {
  String get namaSurah;
  String get noSurah;
  int get noAyat;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result localStorageDataResultData(
            String namaSurah, String noSurah, int noAyat),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result localStorageDataResultData(
        String namaSurah, String noSurah, int noAyat),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result localStorageDataResultData(LocalStorageDataResultData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result localStorageDataResultData(LocalStorageDataResultData value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $LocalStorageDataCopyWith<LocalStorageData> get copyWith;
}

/// @nodoc
abstract class $LocalStorageDataCopyWith<$Res> {
  factory $LocalStorageDataCopyWith(
          LocalStorageData value, $Res Function(LocalStorageData) then) =
      _$LocalStorageDataCopyWithImpl<$Res>;
  $Res call({String namaSurah, String noSurah, int noAyat});
}

/// @nodoc
class _$LocalStorageDataCopyWithImpl<$Res>
    implements $LocalStorageDataCopyWith<$Res> {
  _$LocalStorageDataCopyWithImpl(this._value, this._then);

  final LocalStorageData _value;
  // ignore: unused_field
  final $Res Function(LocalStorageData) _then;

  @override
  $Res call({
    Object namaSurah = freezed,
    Object noSurah = freezed,
    Object noAyat = freezed,
  }) {
    return _then(_value.copyWith(
      namaSurah: namaSurah == freezed ? _value.namaSurah : namaSurah as String,
      noSurah: noSurah == freezed ? _value.noSurah : noSurah as String,
      noAyat: noAyat == freezed ? _value.noAyat : noAyat as int,
    ));
  }
}

/// @nodoc
abstract class $LocalStorageDataResultDataCopyWith<$Res>
    implements $LocalStorageDataCopyWith<$Res> {
  factory $LocalStorageDataResultDataCopyWith(LocalStorageDataResultData value,
          $Res Function(LocalStorageDataResultData) then) =
      _$LocalStorageDataResultDataCopyWithImpl<$Res>;
  @override
  $Res call({String namaSurah, String noSurah, int noAyat});
}

/// @nodoc
class _$LocalStorageDataResultDataCopyWithImpl<$Res>
    extends _$LocalStorageDataCopyWithImpl<$Res>
    implements $LocalStorageDataResultDataCopyWith<$Res> {
  _$LocalStorageDataResultDataCopyWithImpl(LocalStorageDataResultData _value,
      $Res Function(LocalStorageDataResultData) _then)
      : super(_value, (v) => _then(v as LocalStorageDataResultData));

  @override
  LocalStorageDataResultData get _value =>
      super._value as LocalStorageDataResultData;

  @override
  $Res call({
    Object namaSurah = freezed,
    Object noSurah = freezed,
    Object noAyat = freezed,
  }) {
    return _then(LocalStorageDataResultData(
      namaSurah == freezed ? _value.namaSurah : namaSurah as String,
      noSurah == freezed ? _value.noSurah : noSurah as String,
      noAyat == freezed ? _value.noAyat : noAyat as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LocalStorageDataResultData implements LocalStorageDataResultData {
  _$LocalStorageDataResultData(this.namaSurah, this.noSurah, this.noAyat)
      : assert(namaSurah != null),
        assert(noSurah != null),
        assert(noAyat != null);

  factory _$LocalStorageDataResultData.fromJson(Map<String, dynamic> json) =>
      _$_$LocalStorageDataResultDataFromJson(json);

  @override
  final String namaSurah;
  @override
  final String noSurah;
  @override
  final int noAyat;

  @override
  String toString() {
    return 'LocalStorageData.localStorageDataResultData(namaSurah: $namaSurah, noSurah: $noSurah, noAyat: $noAyat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalStorageDataResultData &&
            (identical(other.namaSurah, namaSurah) ||
                const DeepCollectionEquality()
                    .equals(other.namaSurah, namaSurah)) &&
            (identical(other.noSurah, noSurah) ||
                const DeepCollectionEquality()
                    .equals(other.noSurah, noSurah)) &&
            (identical(other.noAyat, noAyat) ||
                const DeepCollectionEquality().equals(other.noAyat, noAyat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(namaSurah) ^
      const DeepCollectionEquality().hash(noSurah) ^
      const DeepCollectionEquality().hash(noAyat);

  @override
  $LocalStorageDataResultDataCopyWith<LocalStorageDataResultData>
      get copyWith =>
          _$LocalStorageDataResultDataCopyWithImpl<LocalStorageDataResultData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result localStorageDataResultData(
            String namaSurah, String noSurah, int noAyat),
  }) {
    assert(localStorageDataResultData != null);
    return localStorageDataResultData(namaSurah, noSurah, noAyat);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result localStorageDataResultData(
        String namaSurah, String noSurah, int noAyat),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (localStorageDataResultData != null) {
      return localStorageDataResultData(namaSurah, noSurah, noAyat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result localStorageDataResultData(LocalStorageDataResultData value),
  }) {
    assert(localStorageDataResultData != null);
    return localStorageDataResultData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result localStorageDataResultData(LocalStorageDataResultData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (localStorageDataResultData != null) {
      return localStorageDataResultData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LocalStorageDataResultDataToJson(this);
  }
}

abstract class LocalStorageDataResultData implements LocalStorageData {
  factory LocalStorageDataResultData(
          String namaSurah, String noSurah, int noAyat) =
      _$LocalStorageDataResultData;

  factory LocalStorageDataResultData.fromJson(Map<String, dynamic> json) =
      _$LocalStorageDataResultData.fromJson;

  @override
  String get namaSurah;
  @override
  String get noSurah;
  @override
  int get noAyat;
  @override
  $LocalStorageDataResultDataCopyWith<LocalStorageDataResultData> get copyWith;
}
