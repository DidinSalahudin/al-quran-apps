// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'surah_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SurahDetailData _$SurahDetailDataFromJson(Map<String, dynamic> json) {
  return SurahDetailDataResultData.fromJson(json);
}

/// @nodoc
class _$SurahDetailDataTearOff {
  const _$SurahDetailDataTearOff();

// ignore: unused_element
  SurahDetailDataResultData surahDetailDataResultData(
      String number,
      String name,
      @JsonKey(name: "name_latin") String nameLatin,
      @JsonKey(name: "number_of_ayah") String numberOfAyah,
      Map<dynamic, dynamic> text,
      Map<dynamic, dynamic> translations,
      Map<dynamic, dynamic> tafsir) {
    return SurahDetailDataResultData(
      number,
      name,
      nameLatin,
      numberOfAyah,
      text,
      translations,
      tafsir,
    );
  }

// ignore: unused_element
  SurahDetailData fromJson(Map<String, Object> json) {
    return SurahDetailData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SurahDetailData = _$SurahDetailDataTearOff();

/// @nodoc
mixin _$SurahDetailData {
  String get number;
  String get name;
  @JsonKey(name: "name_latin")
  String get nameLatin;
  @JsonKey(name: "number_of_ayah")
  String get numberOfAyah;
  Map<dynamic, dynamic> get text;
  Map<dynamic, dynamic> get translations;
  Map<dynamic, dynamic> get tafsir;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result surahDetailDataResultData(
            String number,
            String name,
            @JsonKey(name: "name_latin") String nameLatin,
            @JsonKey(name: "number_of_ayah") String numberOfAyah,
            Map<dynamic, dynamic> text,
            Map<dynamic, dynamic> translations,
            Map<dynamic, dynamic> tafsir),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result surahDetailDataResultData(
        String number,
        String name,
        @JsonKey(name: "name_latin") String nameLatin,
        @JsonKey(name: "number_of_ayah") String numberOfAyah,
        Map<dynamic, dynamic> text,
        Map<dynamic, dynamic> translations,
        Map<dynamic, dynamic> tafsir),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result surahDetailDataResultData(SurahDetailDataResultData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result surahDetailDataResultData(SurahDetailDataResultData value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $SurahDetailDataCopyWith<SurahDetailData> get copyWith;
}

/// @nodoc
abstract class $SurahDetailDataCopyWith<$Res> {
  factory $SurahDetailDataCopyWith(
          SurahDetailData value, $Res Function(SurahDetailData) then) =
      _$SurahDetailDataCopyWithImpl<$Res>;
  $Res call(
      {String number,
      String name,
      @JsonKey(name: "name_latin") String nameLatin,
      @JsonKey(name: "number_of_ayah") String numberOfAyah,
      Map<dynamic, dynamic> text,
      Map<dynamic, dynamic> translations,
      Map<dynamic, dynamic> tafsir});
}

/// @nodoc
class _$SurahDetailDataCopyWithImpl<$Res>
    implements $SurahDetailDataCopyWith<$Res> {
  _$SurahDetailDataCopyWithImpl(this._value, this._then);

  final SurahDetailData _value;
  // ignore: unused_field
  final $Res Function(SurahDetailData) _then;

  @override
  $Res call({
    Object number = freezed,
    Object name = freezed,
    Object nameLatin = freezed,
    Object numberOfAyah = freezed,
    Object text = freezed,
    Object translations = freezed,
    Object tafsir = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed ? _value.number : number as String,
      name: name == freezed ? _value.name : name as String,
      nameLatin: nameLatin == freezed ? _value.nameLatin : nameLatin as String,
      numberOfAyah: numberOfAyah == freezed
          ? _value.numberOfAyah
          : numberOfAyah as String,
      text: text == freezed ? _value.text : text as Map<dynamic, dynamic>,
      translations: translations == freezed
          ? _value.translations
          : translations as Map<dynamic, dynamic>,
      tafsir:
          tafsir == freezed ? _value.tafsir : tafsir as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
abstract class $SurahDetailDataResultDataCopyWith<$Res>
    implements $SurahDetailDataCopyWith<$Res> {
  factory $SurahDetailDataResultDataCopyWith(SurahDetailDataResultData value,
          $Res Function(SurahDetailDataResultData) then) =
      _$SurahDetailDataResultDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String number,
      String name,
      @JsonKey(name: "name_latin") String nameLatin,
      @JsonKey(name: "number_of_ayah") String numberOfAyah,
      Map<dynamic, dynamic> text,
      Map<dynamic, dynamic> translations,
      Map<dynamic, dynamic> tafsir});
}

/// @nodoc
class _$SurahDetailDataResultDataCopyWithImpl<$Res>
    extends _$SurahDetailDataCopyWithImpl<$Res>
    implements $SurahDetailDataResultDataCopyWith<$Res> {
  _$SurahDetailDataResultDataCopyWithImpl(SurahDetailDataResultData _value,
      $Res Function(SurahDetailDataResultData) _then)
      : super(_value, (v) => _then(v as SurahDetailDataResultData));

  @override
  SurahDetailDataResultData get _value =>
      super._value as SurahDetailDataResultData;

  @override
  $Res call({
    Object number = freezed,
    Object name = freezed,
    Object nameLatin = freezed,
    Object numberOfAyah = freezed,
    Object text = freezed,
    Object translations = freezed,
    Object tafsir = freezed,
  }) {
    return _then(SurahDetailDataResultData(
      number == freezed ? _value.number : number as String,
      name == freezed ? _value.name : name as String,
      nameLatin == freezed ? _value.nameLatin : nameLatin as String,
      numberOfAyah == freezed ? _value.numberOfAyah : numberOfAyah as String,
      text == freezed ? _value.text : text as Map<dynamic, dynamic>,
      translations == freezed
          ? _value.translations
          : translations as Map<dynamic, dynamic>,
      tafsir == freezed ? _value.tafsir : tafsir as Map<dynamic, dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SurahDetailDataResultData implements SurahDetailDataResultData {
  _$SurahDetailDataResultData(
      this.number,
      this.name,
      @JsonKey(name: "name_latin") this.nameLatin,
      @JsonKey(name: "number_of_ayah") this.numberOfAyah,
      this.text,
      this.translations,
      this.tafsir)
      : assert(number != null),
        assert(name != null),
        assert(nameLatin != null),
        assert(numberOfAyah != null),
        assert(text != null),
        assert(translations != null),
        assert(tafsir != null);

  factory _$SurahDetailDataResultData.fromJson(Map<String, dynamic> json) =>
      _$_$SurahDetailDataResultDataFromJson(json);

  @override
  final String number;
  @override
  final String name;
  @override
  @JsonKey(name: "name_latin")
  final String nameLatin;
  @override
  @JsonKey(name: "number_of_ayah")
  final String numberOfAyah;
  @override
  final Map<dynamic, dynamic> text;
  @override
  final Map<dynamic, dynamic> translations;
  @override
  final Map<dynamic, dynamic> tafsir;

  @override
  String toString() {
    return 'SurahDetailData.surahDetailDataResultData(number: $number, name: $name, nameLatin: $nameLatin, numberOfAyah: $numberOfAyah, text: $text, translations: $translations, tafsir: $tafsir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurahDetailDataResultData &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nameLatin, nameLatin) ||
                const DeepCollectionEquality()
                    .equals(other.nameLatin, nameLatin)) &&
            (identical(other.numberOfAyah, numberOfAyah) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfAyah, numberOfAyah)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.translations, translations) ||
                const DeepCollectionEquality()
                    .equals(other.translations, translations)) &&
            (identical(other.tafsir, tafsir) ||
                const DeepCollectionEquality().equals(other.tafsir, tafsir)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameLatin) ^
      const DeepCollectionEquality().hash(numberOfAyah) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(translations) ^
      const DeepCollectionEquality().hash(tafsir);

  @override
  $SurahDetailDataResultDataCopyWith<SurahDetailDataResultData> get copyWith =>
      _$SurahDetailDataResultDataCopyWithImpl<SurahDetailDataResultData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result surahDetailDataResultData(
            String number,
            String name,
            @JsonKey(name: "name_latin") String nameLatin,
            @JsonKey(name: "number_of_ayah") String numberOfAyah,
            Map<dynamic, dynamic> text,
            Map<dynamic, dynamic> translations,
            Map<dynamic, dynamic> tafsir),
  }) {
    assert(surahDetailDataResultData != null);
    return surahDetailDataResultData(
        number, name, nameLatin, numberOfAyah, text, translations, tafsir);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result surahDetailDataResultData(
        String number,
        String name,
        @JsonKey(name: "name_latin") String nameLatin,
        @JsonKey(name: "number_of_ayah") String numberOfAyah,
        Map<dynamic, dynamic> text,
        Map<dynamic, dynamic> translations,
        Map<dynamic, dynamic> tafsir),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahDetailDataResultData != null) {
      return surahDetailDataResultData(
          number, name, nameLatin, numberOfAyah, text, translations, tafsir);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result surahDetailDataResultData(SurahDetailDataResultData value),
  }) {
    assert(surahDetailDataResultData != null);
    return surahDetailDataResultData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result surahDetailDataResultData(SurahDetailDataResultData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahDetailDataResultData != null) {
      return surahDetailDataResultData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SurahDetailDataResultDataToJson(this);
  }
}

abstract class SurahDetailDataResultData implements SurahDetailData {
  factory SurahDetailDataResultData(
      String number,
      String name,
      @JsonKey(name: "name_latin") String nameLatin,
      @JsonKey(name: "number_of_ayah") String numberOfAyah,
      Map<dynamic, dynamic> text,
      Map<dynamic, dynamic> translations,
      Map<dynamic, dynamic> tafsir) = _$SurahDetailDataResultData;

  factory SurahDetailDataResultData.fromJson(Map<String, dynamic> json) =
      _$SurahDetailDataResultData.fromJson;

  @override
  String get number;
  @override
  String get name;
  @override
  @JsonKey(name: "name_latin")
  String get nameLatin;
  @override
  @JsonKey(name: "number_of_ayah")
  String get numberOfAyah;
  @override
  Map<dynamic, dynamic> get text;
  @override
  Map<dynamic, dynamic> get translations;
  @override
  Map<dynamic, dynamic> get tafsir;
  @override
  $SurahDetailDataResultDataCopyWith<SurahDetailDataResultData> get copyWith;
}
