// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'doa_harian_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DoaHarianData _$DoaHarianDataFromJson(Map<String, dynamic> json) {
  return DoaHarianDataResultData.fromJson(json);
}

/// @nodoc
class _$DoaHarianDataTearOff {
  const _$DoaHarianDataTearOff();

// ignore: unused_element
  DoaHarianDataResultData doaHarianDataResultData(
      String title, String arabic, String latin, String translation) {
    return DoaHarianDataResultData(
      title,
      arabic,
      latin,
      translation,
    );
  }

// ignore: unused_element
  DoaHarianData fromJson(Map<String, Object> json) {
    return DoaHarianData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DoaHarianData = _$DoaHarianDataTearOff();

/// @nodoc
mixin _$DoaHarianData {
  String get title;
  String get arabic;
  String get latin;
  String get translation;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result doaHarianDataResultData(
            String title, String arabic, String latin, String translation),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result doaHarianDataResultData(
        String title, String arabic, String latin, String translation),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result doaHarianDataResultData(DoaHarianDataResultData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result doaHarianDataResultData(DoaHarianDataResultData value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $DoaHarianDataCopyWith<DoaHarianData> get copyWith;
}

/// @nodoc
abstract class $DoaHarianDataCopyWith<$Res> {
  factory $DoaHarianDataCopyWith(
          DoaHarianData value, $Res Function(DoaHarianData) then) =
      _$DoaHarianDataCopyWithImpl<$Res>;
  $Res call({String title, String arabic, String latin, String translation});
}

/// @nodoc
class _$DoaHarianDataCopyWithImpl<$Res>
    implements $DoaHarianDataCopyWith<$Res> {
  _$DoaHarianDataCopyWithImpl(this._value, this._then);

  final DoaHarianData _value;
  // ignore: unused_field
  final $Res Function(DoaHarianData) _then;

  @override
  $Res call({
    Object title = freezed,
    Object arabic = freezed,
    Object latin = freezed,
    Object translation = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      arabic: arabic == freezed ? _value.arabic : arabic as String,
      latin: latin == freezed ? _value.latin : latin as String,
      translation:
          translation == freezed ? _value.translation : translation as String,
    ));
  }
}

/// @nodoc
abstract class $DoaHarianDataResultDataCopyWith<$Res>
    implements $DoaHarianDataCopyWith<$Res> {
  factory $DoaHarianDataResultDataCopyWith(DoaHarianDataResultData value,
          $Res Function(DoaHarianDataResultData) then) =
      _$DoaHarianDataResultDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String arabic, String latin, String translation});
}

/// @nodoc
class _$DoaHarianDataResultDataCopyWithImpl<$Res>
    extends _$DoaHarianDataCopyWithImpl<$Res>
    implements $DoaHarianDataResultDataCopyWith<$Res> {
  _$DoaHarianDataResultDataCopyWithImpl(DoaHarianDataResultData _value,
      $Res Function(DoaHarianDataResultData) _then)
      : super(_value, (v) => _then(v as DoaHarianDataResultData));

  @override
  DoaHarianDataResultData get _value => super._value as DoaHarianDataResultData;

  @override
  $Res call({
    Object title = freezed,
    Object arabic = freezed,
    Object latin = freezed,
    Object translation = freezed,
  }) {
    return _then(DoaHarianDataResultData(
      title == freezed ? _value.title : title as String,
      arabic == freezed ? _value.arabic : arabic as String,
      latin == freezed ? _value.latin : latin as String,
      translation == freezed ? _value.translation : translation as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$DoaHarianDataResultData implements DoaHarianDataResultData {
  _$DoaHarianDataResultData(
      this.title, this.arabic, this.latin, this.translation)
      : assert(title != null),
        assert(arabic != null),
        assert(latin != null),
        assert(translation != null);

  factory _$DoaHarianDataResultData.fromJson(Map<String, dynamic> json) =>
      _$_$DoaHarianDataResultDataFromJson(json);

  @override
  final String title;
  @override
  final String arabic;
  @override
  final String latin;
  @override
  final String translation;

  @override
  String toString() {
    return 'DoaHarianData.doaHarianDataResultData(title: $title, arabic: $arabic, latin: $latin, translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DoaHarianDataResultData &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.arabic, arabic) ||
                const DeepCollectionEquality().equals(other.arabic, arabic)) &&
            (identical(other.latin, latin) ||
                const DeepCollectionEquality().equals(other.latin, latin)) &&
            (identical(other.translation, translation) ||
                const DeepCollectionEquality()
                    .equals(other.translation, translation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(arabic) ^
      const DeepCollectionEquality().hash(latin) ^
      const DeepCollectionEquality().hash(translation);

  @override
  $DoaHarianDataResultDataCopyWith<DoaHarianDataResultData> get copyWith =>
      _$DoaHarianDataResultDataCopyWithImpl<DoaHarianDataResultData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result doaHarianDataResultData(
            String title, String arabic, String latin, String translation),
  }) {
    assert(doaHarianDataResultData != null);
    return doaHarianDataResultData(title, arabic, latin, translation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result doaHarianDataResultData(
        String title, String arabic, String latin, String translation),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doaHarianDataResultData != null) {
      return doaHarianDataResultData(title, arabic, latin, translation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result doaHarianDataResultData(DoaHarianDataResultData value),
  }) {
    assert(doaHarianDataResultData != null);
    return doaHarianDataResultData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result doaHarianDataResultData(DoaHarianDataResultData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doaHarianDataResultData != null) {
      return doaHarianDataResultData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DoaHarianDataResultDataToJson(this);
  }
}

abstract class DoaHarianDataResultData implements DoaHarianData {
  factory DoaHarianDataResultData(
          String title, String arabic, String latin, String translation) =
      _$DoaHarianDataResultData;

  factory DoaHarianDataResultData.fromJson(Map<String, dynamic> json) =
      _$DoaHarianDataResultData.fromJson;

  @override
  String get title;
  @override
  String get arabic;
  @override
  String get latin;
  @override
  String get translation;
  @override
  $DoaHarianDataResultDataCopyWith<DoaHarianDataResultData> get copyWith;
}
