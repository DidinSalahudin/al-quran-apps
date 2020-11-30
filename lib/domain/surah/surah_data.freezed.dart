// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'surah_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SurahData _$SurahDataFromJson(Map<String, dynamic> json) {
  return SurahResponse.fromJson(json);
}

/// @nodoc
class _$SurahDataTearOff {
  const _$SurahDataTearOff();

// ignore: unused_element
  SurahResponse surahResponse(
      @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo) {
    return SurahResponse(
      surahInfo,
    );
  }

// ignore: unused_element
  SurahData fromJson(Map<String, Object> json) {
    return SurahData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SurahData = _$SurahDataTearOff();

/// @nodoc
mixin _$SurahData {
  @JsonKey(name: "surah_info")
  List<SurahInfoResultData> get surahInfo;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result surahResponse(
            @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result surahResponse(
        @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result surahResponse(SurahResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result surahResponse(SurahResponse value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $SurahDataCopyWith<SurahData> get copyWith;
}

/// @nodoc
abstract class $SurahDataCopyWith<$Res> {
  factory $SurahDataCopyWith(SurahData value, $Res Function(SurahData) then) =
      _$SurahDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo});
}

/// @nodoc
class _$SurahDataCopyWithImpl<$Res> implements $SurahDataCopyWith<$Res> {
  _$SurahDataCopyWithImpl(this._value, this._then);

  final SurahData _value;
  // ignore: unused_field
  final $Res Function(SurahData) _then;

  @override
  $Res call({
    Object surahInfo = freezed,
  }) {
    return _then(_value.copyWith(
      surahInfo: surahInfo == freezed
          ? _value.surahInfo
          : surahInfo as List<SurahInfoResultData>,
    ));
  }
}

/// @nodoc
abstract class $SurahResponseCopyWith<$Res>
    implements $SurahDataCopyWith<$Res> {
  factory $SurahResponseCopyWith(
          SurahResponse value, $Res Function(SurahResponse) then) =
      _$SurahResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo});
}

/// @nodoc
class _$SurahResponseCopyWithImpl<$Res> extends _$SurahDataCopyWithImpl<$Res>
    implements $SurahResponseCopyWith<$Res> {
  _$SurahResponseCopyWithImpl(
      SurahResponse _value, $Res Function(SurahResponse) _then)
      : super(_value, (v) => _then(v as SurahResponse));

  @override
  SurahResponse get _value => super._value as SurahResponse;

  @override
  $Res call({
    Object surahInfo = freezed,
  }) {
    return _then(SurahResponse(
      surahInfo == freezed
          ? _value.surahInfo
          : surahInfo as List<SurahInfoResultData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SurahResponse implements SurahResponse {
  _$SurahResponse(@JsonKey(name: "surah_info") this.surahInfo)
      : assert(surahInfo != null);

  factory _$SurahResponse.fromJson(Map<String, dynamic> json) =>
      _$_$SurahResponseFromJson(json);

  @override
  @JsonKey(name: "surah_info")
  final List<SurahInfoResultData> surahInfo;

  @override
  String toString() {
    return 'SurahData.surahResponse(surahInfo: $surahInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurahResponse &&
            (identical(other.surahInfo, surahInfo) ||
                const DeepCollectionEquality()
                    .equals(other.surahInfo, surahInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(surahInfo);

  @override
  $SurahResponseCopyWith<SurahResponse> get copyWith =>
      _$SurahResponseCopyWithImpl<SurahResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result surahResponse(
            @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo),
  }) {
    assert(surahResponse != null);
    return surahResponse(surahInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result surahResponse(
        @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahResponse != null) {
      return surahResponse(surahInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result surahResponse(SurahResponse value),
  }) {
    assert(surahResponse != null);
    return surahResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result surahResponse(SurahResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahResponse != null) {
      return surahResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SurahResponseToJson(this);
  }
}

abstract class SurahResponse implements SurahData {
  factory SurahResponse(
          @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo) =
      _$SurahResponse;

  factory SurahResponse.fromJson(Map<String, dynamic> json) =
      _$SurahResponse.fromJson;

  @override
  @JsonKey(name: "surah_info")
  List<SurahInfoResultData> get surahInfo;
  @override
  $SurahResponseCopyWith<SurahResponse> get copyWith;
}
