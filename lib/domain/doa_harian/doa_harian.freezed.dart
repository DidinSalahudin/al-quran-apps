// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'doa_harian.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DoaHarian _$DoaHarianFromJson(Map<String, dynamic> json) {
  return DoaHarianResponse.fromJson(json);
}

/// @nodoc
class _$DoaHarianTearOff {
  const _$DoaHarianTearOff();

// ignore: unused_element
  DoaHarianResponse doaHarianReponse(List<DoaHarianDataResultData> data) {
    return DoaHarianResponse(
      data,
    );
  }

// ignore: unused_element
  DoaHarian fromJson(Map<String, Object> json) {
    return DoaHarian.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DoaHarian = _$DoaHarianTearOff();

/// @nodoc
mixin _$DoaHarian {
  List<DoaHarianDataResultData> get data;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result doaHarianReponse(List<DoaHarianDataResultData> data),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result doaHarianReponse(List<DoaHarianDataResultData> data),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result doaHarianReponse(DoaHarianResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result doaHarianReponse(DoaHarianResponse value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $DoaHarianCopyWith<DoaHarian> get copyWith;
}

/// @nodoc
abstract class $DoaHarianCopyWith<$Res> {
  factory $DoaHarianCopyWith(DoaHarian value, $Res Function(DoaHarian) then) =
      _$DoaHarianCopyWithImpl<$Res>;
  $Res call({List<DoaHarianDataResultData> data});
}

/// @nodoc
class _$DoaHarianCopyWithImpl<$Res> implements $DoaHarianCopyWith<$Res> {
  _$DoaHarianCopyWithImpl(this._value, this._then);

  final DoaHarian _value;
  // ignore: unused_field
  final $Res Function(DoaHarian) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data:
          data == freezed ? _value.data : data as List<DoaHarianDataResultData>,
    ));
  }
}

/// @nodoc
abstract class $DoaHarianResponseCopyWith<$Res>
    implements $DoaHarianCopyWith<$Res> {
  factory $DoaHarianResponseCopyWith(
          DoaHarianResponse value, $Res Function(DoaHarianResponse) then) =
      _$DoaHarianResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DoaHarianDataResultData> data});
}

/// @nodoc
class _$DoaHarianResponseCopyWithImpl<$Res>
    extends _$DoaHarianCopyWithImpl<$Res>
    implements $DoaHarianResponseCopyWith<$Res> {
  _$DoaHarianResponseCopyWithImpl(
      DoaHarianResponse _value, $Res Function(DoaHarianResponse) _then)
      : super(_value, (v) => _then(v as DoaHarianResponse));

  @override
  DoaHarianResponse get _value => super._value as DoaHarianResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(DoaHarianResponse(
      data == freezed ? _value.data : data as List<DoaHarianDataResultData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$DoaHarianResponse implements DoaHarianResponse {
  _$DoaHarianResponse(this.data) : assert(data != null);

  factory _$DoaHarianResponse.fromJson(Map<String, dynamic> json) =>
      _$_$DoaHarianResponseFromJson(json);

  @override
  final List<DoaHarianDataResultData> data;

  @override
  String toString() {
    return 'DoaHarian.doaHarianReponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DoaHarianResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $DoaHarianResponseCopyWith<DoaHarianResponse> get copyWith =>
      _$DoaHarianResponseCopyWithImpl<DoaHarianResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result doaHarianReponse(List<DoaHarianDataResultData> data),
  }) {
    assert(doaHarianReponse != null);
    return doaHarianReponse(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result doaHarianReponse(List<DoaHarianDataResultData> data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doaHarianReponse != null) {
      return doaHarianReponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result doaHarianReponse(DoaHarianResponse value),
  }) {
    assert(doaHarianReponse != null);
    return doaHarianReponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result doaHarianReponse(DoaHarianResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doaHarianReponse != null) {
      return doaHarianReponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DoaHarianResponseToJson(this);
  }
}

abstract class DoaHarianResponse implements DoaHarian {
  factory DoaHarianResponse(List<DoaHarianDataResultData> data) =
      _$DoaHarianResponse;

  factory DoaHarianResponse.fromJson(Map<String, dynamic> json) =
      _$DoaHarianResponse.fromJson;

  @override
  List<DoaHarianDataResultData> get data;
  @override
  $DoaHarianResponseCopyWith<DoaHarianResponse> get copyWith;
}
