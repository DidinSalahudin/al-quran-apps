// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'surah_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SurahDetailEventTearOff {
  const _$SurahDetailEventTearOff();

// ignore: unused_element
  _GetData getData(String nomor) {
    return _GetData(
      nomor,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SurahDetailEvent = _$SurahDetailEventTearOff();

/// @nodoc
mixin _$SurahDetailEvent {
  String get nomor;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String nomor),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String nomor),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    @required Result orElse(),
  });

  $SurahDetailEventCopyWith<SurahDetailEvent> get copyWith;
}

/// @nodoc
abstract class $SurahDetailEventCopyWith<$Res> {
  factory $SurahDetailEventCopyWith(
          SurahDetailEvent value, $Res Function(SurahDetailEvent) then) =
      _$SurahDetailEventCopyWithImpl<$Res>;
  $Res call({String nomor});
}

/// @nodoc
class _$SurahDetailEventCopyWithImpl<$Res>
    implements $SurahDetailEventCopyWith<$Res> {
  _$SurahDetailEventCopyWithImpl(this._value, this._then);

  final SurahDetailEvent _value;
  // ignore: unused_field
  final $Res Function(SurahDetailEvent) _then;

  @override
  $Res call({
    Object nomor = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: nomor == freezed ? _value.nomor : nomor as String,
    ));
  }
}

/// @nodoc
abstract class _$GetDataCopyWith<$Res>
    implements $SurahDetailEventCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({String nomor});
}

/// @nodoc
class __$GetDataCopyWithImpl<$Res> extends _$SurahDetailEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;

  @override
  $Res call({
    Object nomor = freezed,
  }) {
    return _then(_GetData(
      nomor == freezed ? _value.nomor : nomor as String,
    ));
  }
}

/// @nodoc
class _$_GetData with DiagnosticableTreeMixin implements _GetData {
  const _$_GetData(this.nomor) : assert(nomor != null);

  @override
  final String nomor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SurahDetailEvent.getData(nomor: $nomor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SurahDetailEvent.getData'))
      ..add(DiagnosticsProperty('nomor', nomor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData &&
            (identical(other.nomor, nomor) ||
                const DeepCollectionEquality().equals(other.nomor, nomor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nomor);

  @override
  _$GetDataCopyWith<_GetData> get copyWith =>
      __$GetDataCopyWithImpl<_GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String nomor),
  }) {
    assert(getData != null);
    return getData(nomor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String nomor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(nomor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
  }) {
    assert(getData != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements SurahDetailEvent {
  const factory _GetData(String nomor) = _$_GetData;

  @override
  String get nomor;
  @override
  _$GetDataCopyWith<_GetData> get copyWith;
}

/// @nodoc
class _$SurahDetailStateTearOff {
  const _$SurahDetailStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _SurahDetailDataOption surahDetailDataOption(
      {@required
          bool onLoading,
      @required
          Option<Either<String, SurahDetailDataResultData>> dataSurahDetail}) {
    return _SurahDetailDataOption(
      onLoading: onLoading,
      dataSurahDetail: dataSurahDetail,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SurahDetailState = _$SurahDetailStateTearOff();

/// @nodoc
mixin _$SurahDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result surahDetailDataOption(bool onLoading,
            Option<Either<String, SurahDetailDataResultData>> dataSurahDetail),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result surahDetailDataOption(bool onLoading,
        Option<Either<String, SurahDetailDataResultData>> dataSurahDetail),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result surahDetailDataOption(_SurahDetailDataOption value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result surahDetailDataOption(_SurahDetailDataOption value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SurahDetailStateCopyWith<$Res> {
  factory $SurahDetailStateCopyWith(
          SurahDetailState value, $Res Function(SurahDetailState) then) =
      _$SurahDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurahDetailStateCopyWithImpl<$Res>
    implements $SurahDetailStateCopyWith<$Res> {
  _$SurahDetailStateCopyWithImpl(this._value, this._then);

  final SurahDetailState _value;
  // ignore: unused_field
  final $Res Function(SurahDetailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SurahDetailStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SurahDetailState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SurahDetailState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result surahDetailDataOption(bool onLoading,
            Option<Either<String, SurahDetailDataResultData>> dataSurahDetail),
  }) {
    assert(initial != null);
    assert(surahDetailDataOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result surahDetailDataOption(bool onLoading,
        Option<Either<String, SurahDetailDataResultData>> dataSurahDetail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result surahDetailDataOption(_SurahDetailDataOption value),
  }) {
    assert(initial != null);
    assert(surahDetailDataOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result surahDetailDataOption(_SurahDetailDataOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SurahDetailState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SurahDetailDataOptionCopyWith<$Res> {
  factory _$SurahDetailDataOptionCopyWith(_SurahDetailDataOption value,
          $Res Function(_SurahDetailDataOption) then) =
      __$SurahDetailDataOptionCopyWithImpl<$Res>;
  $Res call(
      {bool onLoading,
      Option<Either<String, SurahDetailDataResultData>> dataSurahDetail});
}

/// @nodoc
class __$SurahDetailDataOptionCopyWithImpl<$Res>
    extends _$SurahDetailStateCopyWithImpl<$Res>
    implements _$SurahDetailDataOptionCopyWith<$Res> {
  __$SurahDetailDataOptionCopyWithImpl(_SurahDetailDataOption _value,
      $Res Function(_SurahDetailDataOption) _then)
      : super(_value, (v) => _then(v as _SurahDetailDataOption));

  @override
  _SurahDetailDataOption get _value => super._value as _SurahDetailDataOption;

  @override
  $Res call({
    Object onLoading = freezed,
    Object dataSurahDetail = freezed,
  }) {
    return _then(_SurahDetailDataOption(
      onLoading: onLoading == freezed ? _value.onLoading : onLoading as bool,
      dataSurahDetail: dataSurahDetail == freezed
          ? _value.dataSurahDetail
          : dataSurahDetail
              as Option<Either<String, SurahDetailDataResultData>>,
    ));
  }
}

/// @nodoc
class _$_SurahDetailDataOption
    with DiagnosticableTreeMixin
    implements _SurahDetailDataOption {
  _$_SurahDetailDataOption(
      {@required this.onLoading, @required this.dataSurahDetail})
      : assert(onLoading != null),
        assert(dataSurahDetail != null);

  @override
  final bool onLoading;
  @override
  final Option<Either<String, SurahDetailDataResultData>> dataSurahDetail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SurahDetailState.surahDetailDataOption(onLoading: $onLoading, dataSurahDetail: $dataSurahDetail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SurahDetailState.surahDetailDataOption'))
      ..add(DiagnosticsProperty('onLoading', onLoading))
      ..add(DiagnosticsProperty('dataSurahDetail', dataSurahDetail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SurahDetailDataOption &&
            (identical(other.onLoading, onLoading) ||
                const DeepCollectionEquality()
                    .equals(other.onLoading, onLoading)) &&
            (identical(other.dataSurahDetail, dataSurahDetail) ||
                const DeepCollectionEquality()
                    .equals(other.dataSurahDetail, dataSurahDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(onLoading) ^
      const DeepCollectionEquality().hash(dataSurahDetail);

  @override
  _$SurahDetailDataOptionCopyWith<_SurahDetailDataOption> get copyWith =>
      __$SurahDetailDataOptionCopyWithImpl<_SurahDetailDataOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result surahDetailDataOption(bool onLoading,
            Option<Either<String, SurahDetailDataResultData>> dataSurahDetail),
  }) {
    assert(initial != null);
    assert(surahDetailDataOption != null);
    return surahDetailDataOption(onLoading, dataSurahDetail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result surahDetailDataOption(bool onLoading,
        Option<Either<String, SurahDetailDataResultData>> dataSurahDetail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahDetailDataOption != null) {
      return surahDetailDataOption(onLoading, dataSurahDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result surahDetailDataOption(_SurahDetailDataOption value),
  }) {
    assert(initial != null);
    assert(surahDetailDataOption != null);
    return surahDetailDataOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result surahDetailDataOption(_SurahDetailDataOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surahDetailDataOption != null) {
      return surahDetailDataOption(this);
    }
    return orElse();
  }
}

abstract class _SurahDetailDataOption implements SurahDetailState {
  factory _SurahDetailDataOption(
      {@required
          bool onLoading,
      @required
          Option<Either<String, SurahDetailDataResultData>>
              dataSurahDetail}) = _$_SurahDetailDataOption;

  bool get onLoading;
  Option<Either<String, SurahDetailDataResultData>> get dataSurahDetail;
  _$SurahDetailDataOptionCopyWith<_SurahDetailDataOption> get copyWith;
}
