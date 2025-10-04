// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convertspeech_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConvertspeechEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String path, String audioid) convertaudiototext,
    required TResult Function(String path, String videoid)
        convertaoudiototextfromvideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String path, String audioid)? convertaudiototext,
    TResult? Function(String path, String videoid)?
        convertaoudiototextfromvideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String path, String audioid)? convertaudiototext,
    TResult Function(String path, String videoid)? convertaoudiototextfromvideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Convertaudiototext value) convertaudiototext,
    required TResult Function(_Convertaoudiototextfromvideo value)
        convertaoudiototextfromvideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Convertaudiototext value)? convertaudiototext,
    TResult? Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Convertaudiototext value)? convertaudiototext,
    TResult Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertspeechEventCopyWith<$Res> {
  factory $ConvertspeechEventCopyWith(
          ConvertspeechEvent value, $Res Function(ConvertspeechEvent) then) =
      _$ConvertspeechEventCopyWithImpl<$Res, ConvertspeechEvent>;
}

/// @nodoc
class _$ConvertspeechEventCopyWithImpl<$Res, $Val extends ConvertspeechEvent>
    implements $ConvertspeechEventCopyWith<$Res> {
  _$ConvertspeechEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ConvertspeechEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ConvertspeechEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String path, String audioid) convertaudiototext,
    required TResult Function(String path, String videoid)
        convertaoudiototextfromvideo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String path, String audioid)? convertaudiototext,
    TResult? Function(String path, String videoid)?
        convertaoudiototextfromvideo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String path, String audioid)? convertaudiototext,
    TResult Function(String path, String videoid)? convertaoudiototextfromvideo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Convertaudiototext value) convertaudiototext,
    required TResult Function(_Convertaoudiototextfromvideo value)
        convertaoudiototextfromvideo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Convertaudiototext value)? convertaudiototext,
    TResult? Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Convertaudiototext value)? convertaudiototext,
    TResult Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ConvertspeechEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ConvertaudiototextImplCopyWith<$Res> {
  factory _$$ConvertaudiototextImplCopyWith(_$ConvertaudiototextImpl value,
          $Res Function(_$ConvertaudiototextImpl) then) =
      __$$ConvertaudiototextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, String audioid});
}

/// @nodoc
class __$$ConvertaudiototextImplCopyWithImpl<$Res>
    extends _$ConvertspeechEventCopyWithImpl<$Res, _$ConvertaudiototextImpl>
    implements _$$ConvertaudiototextImplCopyWith<$Res> {
  __$$ConvertaudiototextImplCopyWithImpl(_$ConvertaudiototextImpl _value,
      $Res Function(_$ConvertaudiototextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? audioid = null,
  }) {
    return _then(_$ConvertaudiototextImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      audioid: null == audioid
          ? _value.audioid
          : audioid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConvertaudiototextImpl implements _Convertaudiototext {
  const _$ConvertaudiototextImpl({required this.path, required this.audioid});

  @override
  final String path;
  @override
  final String audioid;

  @override
  String toString() {
    return 'ConvertspeechEvent.convertaudiototext(path: $path, audioid: $audioid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertaudiototextImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.audioid, audioid) || other.audioid == audioid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, audioid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertaudiototextImplCopyWith<_$ConvertaudiototextImpl> get copyWith =>
      __$$ConvertaudiototextImplCopyWithImpl<_$ConvertaudiototextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String path, String audioid) convertaudiototext,
    required TResult Function(String path, String videoid)
        convertaoudiototextfromvideo,
  }) {
    return convertaudiototext(path, audioid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String path, String audioid)? convertaudiototext,
    TResult? Function(String path, String videoid)?
        convertaoudiototextfromvideo,
  }) {
    return convertaudiototext?.call(path, audioid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String path, String audioid)? convertaudiototext,
    TResult Function(String path, String videoid)? convertaoudiototextfromvideo,
    required TResult orElse(),
  }) {
    if (convertaudiototext != null) {
      return convertaudiototext(path, audioid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Convertaudiototext value) convertaudiototext,
    required TResult Function(_Convertaoudiototextfromvideo value)
        convertaoudiototextfromvideo,
  }) {
    return convertaudiototext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Convertaudiototext value)? convertaudiototext,
    TResult? Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
  }) {
    return convertaudiototext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Convertaudiototext value)? convertaudiototext,
    TResult Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
    required TResult orElse(),
  }) {
    if (convertaudiototext != null) {
      return convertaudiototext(this);
    }
    return orElse();
  }
}

abstract class _Convertaudiototext implements ConvertspeechEvent {
  const factory _Convertaudiototext(
      {required final String path,
      required final String audioid}) = _$ConvertaudiototextImpl;

  String get path;
  String get audioid;
  @JsonKey(ignore: true)
  _$$ConvertaudiototextImplCopyWith<_$ConvertaudiototextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConvertaoudiototextfromvideoImplCopyWith<$Res> {
  factory _$$ConvertaoudiototextfromvideoImplCopyWith(
          _$ConvertaoudiototextfromvideoImpl value,
          $Res Function(_$ConvertaoudiototextfromvideoImpl) then) =
      __$$ConvertaoudiototextfromvideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, String videoid});
}

/// @nodoc
class __$$ConvertaoudiototextfromvideoImplCopyWithImpl<$Res>
    extends _$ConvertspeechEventCopyWithImpl<$Res,
        _$ConvertaoudiototextfromvideoImpl>
    implements _$$ConvertaoudiototextfromvideoImplCopyWith<$Res> {
  __$$ConvertaoudiototextfromvideoImplCopyWithImpl(
      _$ConvertaoudiototextfromvideoImpl _value,
      $Res Function(_$ConvertaoudiototextfromvideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? videoid = null,
  }) {
    return _then(_$ConvertaoudiototextfromvideoImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      videoid: null == videoid
          ? _value.videoid
          : videoid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConvertaoudiototextfromvideoImpl
    implements _Convertaoudiototextfromvideo {
  const _$ConvertaoudiototextfromvideoImpl(
      {required this.path, required this.videoid});

  @override
  final String path;
  @override
  final String videoid;

  @override
  String toString() {
    return 'ConvertspeechEvent.convertaoudiototextfromvideo(path: $path, videoid: $videoid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertaoudiototextfromvideoImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.videoid, videoid) || other.videoid == videoid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, videoid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertaoudiototextfromvideoImplCopyWith<
          _$ConvertaoudiototextfromvideoImpl>
      get copyWith => __$$ConvertaoudiototextfromvideoImplCopyWithImpl<
          _$ConvertaoudiototextfromvideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String path, String audioid) convertaudiototext,
    required TResult Function(String path, String videoid)
        convertaoudiototextfromvideo,
  }) {
    return convertaoudiototextfromvideo(path, videoid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String path, String audioid)? convertaudiototext,
    TResult? Function(String path, String videoid)?
        convertaoudiototextfromvideo,
  }) {
    return convertaoudiototextfromvideo?.call(path, videoid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String path, String audioid)? convertaudiototext,
    TResult Function(String path, String videoid)? convertaoudiototextfromvideo,
    required TResult orElse(),
  }) {
    if (convertaoudiototextfromvideo != null) {
      return convertaoudiototextfromvideo(path, videoid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Convertaudiototext value) convertaudiototext,
    required TResult Function(_Convertaoudiototextfromvideo value)
        convertaoudiototextfromvideo,
  }) {
    return convertaoudiototextfromvideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Convertaudiototext value)? convertaudiototext,
    TResult? Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
  }) {
    return convertaoudiototextfromvideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Convertaudiototext value)? convertaudiototext,
    TResult Function(_Convertaoudiototextfromvideo value)?
        convertaoudiototextfromvideo,
    required TResult orElse(),
  }) {
    if (convertaoudiototextfromvideo != null) {
      return convertaoudiototextfromvideo(this);
    }
    return orElse();
  }
}

abstract class _Convertaoudiototextfromvideo implements ConvertspeechEvent {
  const factory _Convertaoudiototextfromvideo(
      {required final String path,
      required final String videoid}) = _$ConvertaoudiototextfromvideoImpl;

  String get path;
  String get videoid;
  @JsonKey(ignore: true)
  _$$ConvertaoudiototextfromvideoImplCopyWith<
          _$ConvertaoudiototextfromvideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConvertspeechState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertspeechStateCopyWith<$Res> {
  factory $ConvertspeechStateCopyWith(
          ConvertspeechState value, $Res Function(ConvertspeechState) then) =
      _$ConvertspeechStateCopyWithImpl<$Res, ConvertspeechState>;
}

/// @nodoc
class _$ConvertspeechStateCopyWithImpl<$Res, $Val extends ConvertspeechState>
    implements $ConvertspeechStateCopyWith<$Res> {
  _$ConvertspeechStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ConvertspeechState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConvertspeechState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$convertedspeechImplCopyWith<$Res> {
  factory _$$convertedspeechImplCopyWith(_$convertedspeechImpl value,
          $Res Function(_$convertedspeechImpl) then) =
      __$$convertedspeechImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String speech, String path});
}

/// @nodoc
class __$$convertedspeechImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$convertedspeechImpl>
    implements _$$convertedspeechImplCopyWith<$Res> {
  __$$convertedspeechImplCopyWithImpl(
      _$convertedspeechImpl _value, $Res Function(_$convertedspeechImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speech = null,
    Object? path = null,
  }) {
    return _then(_$convertedspeechImpl(
      speech: null == speech
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$convertedspeechImpl implements _convertedspeech {
  const _$convertedspeechImpl({required this.speech, required this.path});

  @override
  final String speech;
  @override
  final String path;

  @override
  String toString() {
    return 'ConvertspeechState.convertedspeech(speech: $speech, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$convertedspeechImpl &&
            (identical(other.speech, speech) || other.speech == speech) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speech, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$convertedspeechImplCopyWith<_$convertedspeechImpl> get copyWith =>
      __$$convertedspeechImplCopyWithImpl<_$convertedspeechImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return convertedspeech(speech, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return convertedspeech?.call(speech, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (convertedspeech != null) {
      return convertedspeech(speech, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return convertedspeech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return convertedspeech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (convertedspeech != null) {
      return convertedspeech(this);
    }
    return orElse();
  }
}

abstract class _convertedspeech implements ConvertspeechState {
  const factory _convertedspeech(
      {required final String speech,
      required final String path}) = _$convertedspeechImpl;

  String get speech;
  String get path;
  @JsonKey(ignore: true)
  _$$convertedspeechImplCopyWith<_$convertedspeechImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ConvertspeechState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ConvertspeechState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'ConvertspeechState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ConvertspeechState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$sucessImplCopyWith<$Res> {
  factory _$$sucessImplCopyWith(
          _$sucessImpl value, $Res Function(_$sucessImpl) then) =
      __$$sucessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$sucessImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$sucessImpl>
    implements _$$sucessImplCopyWith<$Res> {
  __$$sucessImplCopyWithImpl(
      _$sucessImpl _value, $Res Function(_$sucessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$sucessImpl implements _sucess {
  const _$sucessImpl();

  @override
  String toString() {
    return 'ConvertspeechState.sucess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$sucessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _sucess implements ConvertspeechState {
  const factory _sucess() = _$sucessImpl;
}

/// @nodoc
abstract class _$$LoadinfvideoconvertImplCopyWith<$Res> {
  factory _$$LoadinfvideoconvertImplCopyWith(_$LoadinfvideoconvertImpl value,
          $Res Function(_$LoadinfvideoconvertImpl) then) =
      __$$LoadinfvideoconvertImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadinfvideoconvertImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$LoadinfvideoconvertImpl>
    implements _$$LoadinfvideoconvertImplCopyWith<$Res> {
  __$$LoadinfvideoconvertImplCopyWithImpl(_$LoadinfvideoconvertImpl _value,
      $Res Function(_$LoadinfvideoconvertImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadinfvideoconvertImpl implements _Loadinfvideoconvert {
  const _$LoadinfvideoconvertImpl();

  @override
  String toString() {
    return 'ConvertspeechState.loadinfvideoconvert()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadinfvideoconvertImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return loadinfvideoconvert();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return loadinfvideoconvert?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (loadinfvideoconvert != null) {
      return loadinfvideoconvert();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return loadinfvideoconvert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return loadinfvideoconvert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (loadinfvideoconvert != null) {
      return loadinfvideoconvert(this);
    }
    return orElse();
  }
}

abstract class _Loadinfvideoconvert implements ConvertspeechState {
  const factory _Loadinfvideoconvert() = _$LoadinfvideoconvertImpl;
}

/// @nodoc
abstract class _$$ErrorinvodeoconversionImplCopyWith<$Res> {
  factory _$$ErrorinvodeoconversionImplCopyWith(
          _$ErrorinvodeoconversionImpl value,
          $Res Function(_$ErrorinvodeoconversionImpl) then) =
      __$$ErrorinvodeoconversionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorinvodeoconversionImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res, _$ErrorinvodeoconversionImpl>
    implements _$$ErrorinvodeoconversionImplCopyWith<$Res> {
  __$$ErrorinvodeoconversionImplCopyWithImpl(
      _$ErrorinvodeoconversionImpl _value,
      $Res Function(_$ErrorinvodeoconversionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorinvodeoconversionImpl implements _Errorinvodeoconversion {
  const _$ErrorinvodeoconversionImpl();

  @override
  String toString() {
    return 'ConvertspeechState.errorinvodeoconversion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorinvodeoconversionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return errorinvodeoconversion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return errorinvodeoconversion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (errorinvodeoconversion != null) {
      return errorinvodeoconversion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return errorinvodeoconversion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return errorinvodeoconversion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (errorinvodeoconversion != null) {
      return errorinvodeoconversion(this);
    }
    return orElse();
  }
}

abstract class _Errorinvodeoconversion implements ConvertspeechState {
  const factory _Errorinvodeoconversion() = _$ErrorinvodeoconversionImpl;
}

/// @nodoc
abstract class _$$ConvertedspeechfromvideImplCopyWith<$Res> {
  factory _$$ConvertedspeechfromvideImplCopyWith(
          _$ConvertedspeechfromvideImpl value,
          $Res Function(_$ConvertedspeechfromvideImpl) then) =
      __$$ConvertedspeechfromvideImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String speech, String path, String id});
}

/// @nodoc
class __$$ConvertedspeechfromvideImplCopyWithImpl<$Res>
    extends _$ConvertspeechStateCopyWithImpl<$Res,
        _$ConvertedspeechfromvideImpl>
    implements _$$ConvertedspeechfromvideImplCopyWith<$Res> {
  __$$ConvertedspeechfromvideImplCopyWithImpl(
      _$ConvertedspeechfromvideImpl _value,
      $Res Function(_$ConvertedspeechfromvideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speech = null,
    Object? path = null,
    Object? id = null,
  }) {
    return _then(_$ConvertedspeechfromvideImpl(
      speech: null == speech
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConvertedspeechfromvideImpl implements _Convertedspeechfromvide {
  const _$ConvertedspeechfromvideImpl(
      {required this.speech, required this.path, required this.id});

  @override
  final String speech;
  @override
  final String path;
  @override
  final String id;

  @override
  String toString() {
    return 'ConvertspeechState.convertedspeechfromvide(speech: $speech, path: $path, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertedspeechfromvideImpl &&
            (identical(other.speech, speech) || other.speech == speech) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speech, path, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertedspeechfromvideImplCopyWith<_$ConvertedspeechfromvideImpl>
      get copyWith => __$$ConvertedspeechfromvideImplCopyWithImpl<
          _$ConvertedspeechfromvideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String speech, String path) convertedspeech,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() sucess,
    required TResult Function() loadinfvideoconvert,
    required TResult Function() errorinvodeoconversion,
    required TResult Function(String speech, String path, String id)
        convertedspeechfromvide,
  }) {
    return convertedspeechfromvide(speech, path, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String speech, String path)? convertedspeech,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? sucess,
    TResult? Function()? loadinfvideoconvert,
    TResult? Function()? errorinvodeoconversion,
    TResult? Function(String speech, String path, String id)?
        convertedspeechfromvide,
  }) {
    return convertedspeechfromvide?.call(speech, path, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String speech, String path)? convertedspeech,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? sucess,
    TResult Function()? loadinfvideoconvert,
    TResult Function()? errorinvodeoconversion,
    TResult Function(String speech, String path, String id)?
        convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (convertedspeechfromvide != null) {
      return convertedspeechfromvide(speech, path, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_convertedspeech value) convertedspeech,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_sucess value) sucess,
    required TResult Function(_Loadinfvideoconvert value) loadinfvideoconvert,
    required TResult Function(_Errorinvodeoconversion value)
        errorinvodeoconversion,
    required TResult Function(_Convertedspeechfromvide value)
        convertedspeechfromvide,
  }) {
    return convertedspeechfromvide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_convertedspeech value)? convertedspeech,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_sucess value)? sucess,
    TResult? Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult? Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult? Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
  }) {
    return convertedspeechfromvide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_convertedspeech value)? convertedspeech,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_sucess value)? sucess,
    TResult Function(_Loadinfvideoconvert value)? loadinfvideoconvert,
    TResult Function(_Errorinvodeoconversion value)? errorinvodeoconversion,
    TResult Function(_Convertedspeechfromvide value)? convertedspeechfromvide,
    required TResult orElse(),
  }) {
    if (convertedspeechfromvide != null) {
      return convertedspeechfromvide(this);
    }
    return orElse();
  }
}

abstract class _Convertedspeechfromvide implements ConvertspeechState {
  const factory _Convertedspeechfromvide(
      {required final String speech,
      required final String path,
      required final String id}) = _$ConvertedspeechfromvideImpl;

  String get speech;
  String get path;
  String get id;
  @JsonKey(ignore: true)
  _$$ConvertedspeechfromvideImplCopyWith<_$ConvertedspeechfromvideImpl>
      get copyWith => throw _privateConstructorUsedError;
}
