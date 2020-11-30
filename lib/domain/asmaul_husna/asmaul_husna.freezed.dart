// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'asmaul_husna.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AsmaulHusna _$AsmaulHusnaFromJson(Map<String, dynamic> json) {
  return AsmaulHusnaResponse.fromJson(json);
}

/// @nodoc
class _$AsmaulHusnaTearOff {
  const _$AsmaulHusnaTearOff();

// ignore: unused_element
  AsmaulHusnaResponse asmaulHusnaReponse(List<AsmaulHusnaDataResultData> data) {
    return AsmaulHusnaResponse(
      data,
    );
  }

// ignore: unused_element
  AsmaulHusna fromJson(Map<String, Object> json) {
    return AsmaulHusna.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AsmaulHusna = _$AsmaulHusnaTearOff();

/// @nodoc
mixin _$AsmaulHusna {
  List<AsmaulHusnaDataResultData> get data;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result asmaulHusnaReponse(List<AsmaulHusnaDataResultData> data),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result asmaulHusnaReponse(List<AsmaulHusnaDataResultData> data),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result asmaulHusnaReponse(AsmaulHusnaResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result asmaulHusnaReponse(AsmaulHusnaResponse value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $AsmaulHusnaCopyWith<AsmaulHusna> get copyWith;
}

/// @nodoc
abstract class $AsmaulHusnaCopyWith<$Res> {
  factory $AsmaulHusnaCopyWith(
          AsmaulHusna value, $Res Function(AsmaulHusna) then) =
      _$AsmaulHusnaCopyWithImpl<$Res>;
  $Res call({List<AsmaulHusnaDataResultData> data});
}

/// @nodoc
class _$AsmaulHusnaCopyWithImpl<$Res> implements $AsmaulHusnaCopyWith<$Res> {
  _$AsmaulHusnaCopyWithImpl(this._value, this._then);

  final AsmaulHusna _value;
  // ignore: unused_field
  final $Res Function(AsmaulHusna) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data as List<AsmaulHusnaDataResultData>,
    ));
  }
}

/// @nodoc
abstract class $AsmaulHusnaResponseCopyWith<$Res>
    implements $AsmaulHusnaCopyWith<$Res> {
  factory $AsmaulHusnaResponseCopyWith(
          AsmaulHusnaResponse value, $Res Function(AsmaulHusnaResponse) then) =
      _$AsmaulHusnaResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<AsmaulHusnaDataResultData> data});
}

/// @nodoc
class _$AsmaulHusnaResponseCopyWithImpl<$Res>
    extends _$AsmaulHusnaCopyWithImpl<$Res>
    implements $AsmaulHusnaResponseCopyWith<$Res> {
  _$AsmaulHusnaResponseCopyWithImpl(
      AsmaulHusnaResponse _value, $Res Function(AsmaulHusnaResponse) _then)
      : super(_value, (v) => _then(v as AsmaulHusnaResponse));

  @override
  AsmaulHusnaResponse get _value => super._value as AsmaulHusnaResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(AsmaulHusnaResponse(
      data == freezed ? _value.data : data as List<AsmaulHusnaDataResultData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$AsmaulHusnaResponse implements AsmaulHusnaResponse {
  _$AsmaulHusnaResponse(this.data) : assert(data != null);

  factory _$AsmaulHusnaResponse.fromJson(Map<String, dynamic> json) =>
      _$_$AsmaulHusnaResponseFromJson(json);

  @override
  final List<AsmaulHusnaDataResultData> data;

  @override
  String toString() {
    return 'AsmaulHusna.asmaulHusnaReponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AsmaulHusnaResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $AsmaulHusnaResponseCopyWith<AsmaulHusnaResponse> get copyWith =>
      _$AsmaulHusnaResponseCopyWithImpl<AsmaulHusnaResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result asmaulHusnaReponse(List<AsmaulHusnaDataResultData> data),
  }) {
    assert(asmaulHusnaReponse != null);
    return asmaulHusnaReponse(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result asmaulHusnaReponse(List<AsmaulHusnaDataResultData> data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (asmaulHusnaReponse != null) {
      return asmaulHusnaReponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result asmaulHusnaReponse(AsmaulHusnaResponse value),
  }) {
    assert(asmaulHusnaReponse != null);
    return asmaulHusnaReponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result asmaulHusnaReponse(AsmaulHusnaResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (asmaulHusnaReponse != null) {
      return asmaulHusnaReponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AsmaulHusnaResponseToJson(this);
  }
}

abstract class AsmaulHusnaResponse implements AsmaulHusna {
  factory AsmaulHusnaResponse(List<AsmaulHusnaDataResultData> data) =
      _$AsmaulHusnaResponse;

  factory AsmaulHusnaResponse.fromJson(Map<String, dynamic> json) =
      _$AsmaulHusnaResponse.fromJson;

  @override
  List<AsmaulHusnaDataResultData> get data;
  @override
  $AsmaulHusnaResponseCopyWith<AsmaulHusnaResponse> get copyWith;
}
