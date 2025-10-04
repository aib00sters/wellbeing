// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_painting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadPaintingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, int isarId, String extImagePath, bool isDirectPath)
        loadProject,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, int isarId, String extImagePath, bool isDirectPath)?
        loadProject,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, int isarId, String extImagePath, bool isDirectPath)?
        loadProject,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProject value) loadProject,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProject value)? loadProject,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProject value)? loadProject,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadPaintingEventCopyWith<$Res> {
  factory $LoadPaintingEventCopyWith(
          LoadPaintingEvent value, $Res Function(LoadPaintingEvent) then) =
      _$LoadPaintingEventCopyWithImpl<$Res, LoadPaintingEvent>;
}

/// @nodoc
class _$LoadPaintingEventCopyWithImpl<$Res, $Val extends LoadPaintingEvent>
    implements $LoadPaintingEventCopyWith<$Res> {
  _$LoadPaintingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadProjectImplCopyWith<$Res> {
  factory _$$LoadProjectImplCopyWith(
          _$LoadProjectImpl value, $Res Function(_$LoadProjectImpl) then) =
      __$$LoadProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, int isarId, String extImagePath, bool isDirectPath});
}

/// @nodoc
class __$$LoadProjectImplCopyWithImpl<$Res>
    extends _$LoadPaintingEventCopyWithImpl<$Res, _$LoadProjectImpl>
    implements _$$LoadProjectImplCopyWith<$Res> {
  __$$LoadProjectImplCopyWithImpl(
      _$LoadProjectImpl _value, $Res Function(_$LoadProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? isarId = null,
    Object? extImagePath = null,
    Object? isDirectPath = null,
  }) {
    return _then(_$LoadProjectImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      isarId: null == isarId
          ? _value.isarId
          : isarId // ignore: cast_nullable_to_non_nullable
              as int,
      extImagePath: null == extImagePath
          ? _value.extImagePath
          : extImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isDirectPath: null == isDirectPath
          ? _value.isDirectPath
          : isDirectPath // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadProjectImpl implements _LoadProject {
  const _$LoadProjectImpl(
      {required this.path,
      required this.isarId,
      required this.extImagePath,
      required this.isDirectPath});

  @override
  final String path;
  @override
  final int isarId;
  @override
  final String extImagePath;
  @override
  final bool isDirectPath;

  @override
  String toString() {
    return 'LoadPaintingEvent.loadProject(path: $path, isarId: $isarId, extImagePath: $extImagePath, isDirectPath: $isDirectPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProjectImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isarId, isarId) || other.isarId == isarId) &&
            (identical(other.extImagePath, extImagePath) ||
                other.extImagePath == extImagePath) &&
            (identical(other.isDirectPath, isDirectPath) ||
                other.isDirectPath == isDirectPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, path, isarId, extImagePath, isDirectPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProjectImplCopyWith<_$LoadProjectImpl> get copyWith =>
      __$$LoadProjectImplCopyWithImpl<_$LoadProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, int isarId, String extImagePath, bool isDirectPath)
        loadProject,
    required TResult Function() started,
  }) {
    return loadProject(path, isarId, extImagePath, isDirectPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, int isarId, String extImagePath, bool isDirectPath)?
        loadProject,
    TResult? Function()? started,
  }) {
    return loadProject?.call(path, isarId, extImagePath, isDirectPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, int isarId, String extImagePath, bool isDirectPath)?
        loadProject,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (loadProject != null) {
      return loadProject(path, isarId, extImagePath, isDirectPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProject value) loadProject,
    required TResult Function(_Started value) started,
  }) {
    return loadProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProject value)? loadProject,
    TResult? Function(_Started value)? started,
  }) {
    return loadProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProject value)? loadProject,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (loadProject != null) {
      return loadProject(this);
    }
    return orElse();
  }
}

abstract class _LoadProject implements LoadPaintingEvent {
  const factory _LoadProject(
      {required final String path,
      required final int isarId,
      required final String extImagePath,
      required final bool isDirectPath}) = _$LoadProjectImpl;

  String get path;
  int get isarId;
  String get extImagePath;
  bool get isDirectPath;
  @JsonKey(ignore: true)
  _$$LoadProjectImplCopyWith<_$LoadProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoadPaintingEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'LoadPaintingEvent.started()';
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
    required TResult Function(
            String path, int isarId, String extImagePath, bool isDirectPath)
        loadProject,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, int isarId, String extImagePath, bool isDirectPath)?
        loadProject,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, int isarId, String extImagePath, bool isDirectPath)?
        loadProject,
    TResult Function()? started,
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
    required TResult Function(_LoadProject value) loadProject,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProject value)? loadProject,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProject value)? loadProject,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoadPaintingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$LoadPaintingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(bool navigate) projectLoading,
    required TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(bool navigate)? projectLoading,
    TResult? Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(bool navigate)? projectLoading,
    TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectLoading value) projectLoading,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectLoading value)? projectLoading,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectLoading value)? projectLoading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadPaintingStateCopyWith<$Res> {
  factory $LoadPaintingStateCopyWith(
          LoadPaintingState value, $Res Function(LoadPaintingState) then) =
      _$LoadPaintingStateCopyWithImpl<$Res, LoadPaintingState>;
}

/// @nodoc
class _$LoadPaintingStateCopyWithImpl<$Res, $Val extends LoadPaintingState>
    implements $LoadPaintingStateCopyWith<$Res> {
  _$LoadPaintingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoadPaintingStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'LoadPaintingState.error()';
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
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(bool navigate) projectLoading,
    required TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)
        success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(bool navigate)? projectLoading,
    TResult? Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(bool navigate)? projectLoading,
    TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectLoading value) projectLoading,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectLoading value)? projectLoading,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectLoading value)? projectLoading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoadPaintingState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoadPaintingStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LoadPaintingState.initial()';
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
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(bool navigate) projectLoading,
    required TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(bool navigate)? projectLoading,
    TResult? Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(bool navigate)? projectLoading,
    TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectLoading value) projectLoading,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectLoading value)? projectLoading,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectLoading value)? projectLoading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoadPaintingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProjectLoadingImplCopyWith<$Res> {
  factory _$$ProjectLoadingImplCopyWith(_$ProjectLoadingImpl value,
          $Res Function(_$ProjectLoadingImpl) then) =
      __$$ProjectLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool navigate});
}

/// @nodoc
class __$$ProjectLoadingImplCopyWithImpl<$Res>
    extends _$LoadPaintingStateCopyWithImpl<$Res, _$ProjectLoadingImpl>
    implements _$$ProjectLoadingImplCopyWith<$Res> {
  __$$ProjectLoadingImplCopyWithImpl(
      _$ProjectLoadingImpl _value, $Res Function(_$ProjectLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigate = null,
  }) {
    return _then(_$ProjectLoadingImpl(
      navigate: null == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProjectLoadingImpl implements _ProjectLoading {
  const _$ProjectLoadingImpl({required this.navigate});

  @override
  final bool navigate;

  @override
  String toString() {
    return 'LoadPaintingState.projectLoading(navigate: $navigate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectLoadingImpl &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectLoadingImplCopyWith<_$ProjectLoadingImpl> get copyWith =>
      __$$ProjectLoadingImplCopyWithImpl<_$ProjectLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(bool navigate) projectLoading,
    required TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)
        success,
  }) {
    return projectLoading(navigate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(bool navigate)? projectLoading,
    TResult? Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
  }) {
    return projectLoading?.call(navigate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(bool navigate)? projectLoading,
    TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
    required TResult orElse(),
  }) {
    if (projectLoading != null) {
      return projectLoading(navigate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectLoading value) projectLoading,
    required TResult Function(_Success value) success,
  }) {
    return projectLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectLoading value)? projectLoading,
    TResult? Function(_Success value)? success,
  }) {
    return projectLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectLoading value)? projectLoading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (projectLoading != null) {
      return projectLoading(this);
    }
    return orElse();
  }
}

abstract class _ProjectLoading implements LoadPaintingState {
  const factory _ProjectLoading({required final bool navigate}) =
      _$ProjectLoadingImpl;

  bool get navigate;
  @JsonKey(ignore: true)
  _$$ProjectLoadingImplCopyWith<_$ProjectLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String drawingJson, int isarId, String filePath, String extImagePath});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoadPaintingStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drawingJson = null,
    Object? isarId = null,
    Object? filePath = null,
    Object? extImagePath = null,
  }) {
    return _then(_$SuccessImpl(
      drawingJson: null == drawingJson
          ? _value.drawingJson
          : drawingJson // ignore: cast_nullable_to_non_nullable
              as String,
      isarId: null == isarId
          ? _value.isarId
          : isarId // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      extImagePath: null == extImagePath
          ? _value.extImagePath
          : extImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.drawingJson,
      required this.isarId,
      required this.filePath,
      required this.extImagePath});

  @override
  final String drawingJson;
  @override
  final int isarId;
  @override
  final String filePath;
  @override
  final String extImagePath;

  @override
  String toString() {
    return 'LoadPaintingState.success(drawingJson: $drawingJson, isarId: $isarId, filePath: $filePath, extImagePath: $extImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.drawingJson, drawingJson) ||
                other.drawingJson == drawingJson) &&
            (identical(other.isarId, isarId) || other.isarId == isarId) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.extImagePath, extImagePath) ||
                other.extImagePath == extImagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, drawingJson, isarId, filePath, extImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function(bool navigate) projectLoading,
    required TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)
        success,
  }) {
    return success(drawingJson, isarId, filePath, extImagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function(bool navigate)? projectLoading,
    TResult? Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
  }) {
    return success?.call(drawingJson, isarId, filePath, extImagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function(bool navigate)? projectLoading,
    TResult Function(String drawingJson, int isarId, String filePath,
            String extImagePath)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(drawingJson, isarId, filePath, extImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectLoading value) projectLoading,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectLoading value)? projectLoading,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectLoading value)? projectLoading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoadPaintingState {
  const factory _Success(
      {required final String drawingJson,
      required final int isarId,
      required final String filePath,
      required final String extImagePath}) = _$SuccessImpl;

  String get drawingJson;
  int get isarId;
  String get filePath;
  String get extImagePath;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
