// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String path) projectDelete,
    required TResult Function(
            Uint8List image, String projectData, String path, int isarId)
        projectSave,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String path)? projectDelete,
    TResult? Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String path)? projectDelete,
    TResult Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectDelete value) projectDelete,
    required TResult Function(_ProjectSave value) projectSave,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectDelete value)? projectDelete,
    TResult? Function(_ProjectSave value)? projectSave,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectDelete value)? projectDelete,
    TResult Function(_ProjectSave value)? projectSave,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListEventCopyWith<$Res> {
  factory $ProjectListEventCopyWith(
          ProjectListEvent value, $Res Function(ProjectListEvent) then) =
      _$ProjectListEventCopyWithImpl<$Res, ProjectListEvent>;
}

/// @nodoc
class _$ProjectListEventCopyWithImpl<$Res, $Val extends ProjectListEvent>
    implements $ProjectListEventCopyWith<$Res> {
  _$ProjectListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectDeleteImplCopyWith<$Res> {
  factory _$$ProjectDeleteImplCopyWith(
          _$ProjectDeleteImpl value, $Res Function(_$ProjectDeleteImpl) then) =
      __$$ProjectDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String path});
}

/// @nodoc
class __$$ProjectDeleteImplCopyWithImpl<$Res>
    extends _$ProjectListEventCopyWithImpl<$Res, _$ProjectDeleteImpl>
    implements _$$ProjectDeleteImplCopyWith<$Res> {
  __$$ProjectDeleteImplCopyWithImpl(
      _$ProjectDeleteImpl _value, $Res Function(_$ProjectDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
  }) {
    return _then(_$ProjectDeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectDeleteImpl implements _ProjectDelete {
  const _$ProjectDeleteImpl(this.id, this.path);

  @override
  final int id;
  @override
  final String path;

  @override
  String toString() {
    return 'ProjectListEvent.projectDelete(id: $id, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDeleteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDeleteImplCopyWith<_$ProjectDeleteImpl> get copyWith =>
      __$$ProjectDeleteImplCopyWithImpl<_$ProjectDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String path) projectDelete,
    required TResult Function(
            Uint8List image, String projectData, String path, int isarId)
        projectSave,
    required TResult Function() started,
  }) {
    return projectDelete(id, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String path)? projectDelete,
    TResult? Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult? Function()? started,
  }) {
    return projectDelete?.call(id, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String path)? projectDelete,
    TResult Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (projectDelete != null) {
      return projectDelete(id, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectDelete value) projectDelete,
    required TResult Function(_ProjectSave value) projectSave,
    required TResult Function(_Started value) started,
  }) {
    return projectDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectDelete value)? projectDelete,
    TResult? Function(_ProjectSave value)? projectSave,
    TResult? Function(_Started value)? started,
  }) {
    return projectDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectDelete value)? projectDelete,
    TResult Function(_ProjectSave value)? projectSave,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (projectDelete != null) {
      return projectDelete(this);
    }
    return orElse();
  }
}

abstract class _ProjectDelete implements ProjectListEvent {
  const factory _ProjectDelete(final int id, final String path) =
      _$ProjectDeleteImpl;

  int get id;
  String get path;
  @JsonKey(ignore: true)
  _$$ProjectDeleteImplCopyWith<_$ProjectDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectSaveImplCopyWith<$Res> {
  factory _$$ProjectSaveImplCopyWith(
          _$ProjectSaveImpl value, $Res Function(_$ProjectSaveImpl) then) =
      __$$ProjectSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List image, String projectData, String path, int isarId});
}

/// @nodoc
class __$$ProjectSaveImplCopyWithImpl<$Res>
    extends _$ProjectListEventCopyWithImpl<$Res, _$ProjectSaveImpl>
    implements _$$ProjectSaveImplCopyWith<$Res> {
  __$$ProjectSaveImplCopyWithImpl(
      _$ProjectSaveImpl _value, $Res Function(_$ProjectSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? projectData = null,
    Object? path = null,
    Object? isarId = null,
  }) {
    return _then(_$ProjectSaveImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == projectData
          ? _value.projectData
          : projectData // ignore: cast_nullable_to_non_nullable
              as String,
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      null == isarId
          ? _value.isarId
          : isarId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProjectSaveImpl implements _ProjectSave {
  const _$ProjectSaveImpl(this.image, this.projectData, this.path, this.isarId);

  @override
  final Uint8List image;
  @override
  final String projectData;
  @override
  final String path;
  @override
  final int isarId;

  @override
  String toString() {
    return 'ProjectListEvent.projectSave(image: $image, projectData: $projectData, path: $path, isarId: $isarId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSaveImpl &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.projectData, projectData) ||
                other.projectData == projectData) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isarId, isarId) || other.isarId == isarId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(image), projectData, path, isarId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSaveImplCopyWith<_$ProjectSaveImpl> get copyWith =>
      __$$ProjectSaveImplCopyWithImpl<_$ProjectSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String path) projectDelete,
    required TResult Function(
            Uint8List image, String projectData, String path, int isarId)
        projectSave,
    required TResult Function() started,
  }) {
    return projectSave(image, projectData, path, isarId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String path)? projectDelete,
    TResult? Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult? Function()? started,
  }) {
    return projectSave?.call(image, projectData, path, isarId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String path)? projectDelete,
    TResult Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (projectSave != null) {
      return projectSave(image, projectData, path, isarId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectDelete value) projectDelete,
    required TResult Function(_ProjectSave value) projectSave,
    required TResult Function(_Started value) started,
  }) {
    return projectSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectDelete value)? projectDelete,
    TResult? Function(_ProjectSave value)? projectSave,
    TResult? Function(_Started value)? started,
  }) {
    return projectSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectDelete value)? projectDelete,
    TResult Function(_ProjectSave value)? projectSave,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (projectSave != null) {
      return projectSave(this);
    }
    return orElse();
  }
}

abstract class _ProjectSave implements ProjectListEvent {
  const factory _ProjectSave(final Uint8List image, final String projectData,
      final String path, final int isarId) = _$ProjectSaveImpl;

  Uint8List get image;
  String get projectData;
  String get path;
  int get isarId;
  @JsonKey(ignore: true)
  _$$ProjectSaveImplCopyWith<_$ProjectSaveImpl> get copyWith =>
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
    extends _$ProjectListEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ProjectListEvent.started()';
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
    required TResult Function(int id, String path) projectDelete,
    required TResult Function(
            Uint8List image, String projectData, String path, int isarId)
        projectSave,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String path)? projectDelete,
    TResult? Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String path)? projectDelete,
    TResult Function(
            Uint8List image, String projectData, String path, int isarId)?
        projectSave,
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
    required TResult Function(_ProjectDelete value) projectDelete,
    required TResult Function(_ProjectSave value) projectSave,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectDelete value)? projectDelete,
    TResult? Function(_ProjectSave value)? projectSave,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectDelete value)? projectDelete,
    TResult Function(_ProjectSave value)? projectSave,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProjectListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$ProjectListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() projectSaveSuccess,
    required TResult Function() saveLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? projectSaveSuccess,
    TResult? Function()? saveLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? projectSaveSuccess,
    TResult Function()? saveLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectSaveSuccess value) projectSaveSuccess,
    required TResult Function(_Loading value) saveLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult? Function(_Loading value)? saveLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult Function(_Loading value)? saveLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListStateCopyWith<$Res> {
  factory $ProjectListStateCopyWith(
          ProjectListState value, $Res Function(ProjectListState) then) =
      _$ProjectListStateCopyWithImpl<$Res, ProjectListState>;
}

/// @nodoc
class _$ProjectListStateCopyWithImpl<$Res, $Val extends ProjectListState>
    implements $ProjectListStateCopyWith<$Res> {
  _$ProjectListStateCopyWithImpl(this._value, this._then);

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
    extends _$ProjectListStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ProjectListState.error()';
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
    required TResult Function() projectSaveSuccess,
    required TResult Function() saveLoading,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? projectSaveSuccess,
    TResult? Function()? saveLoading,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? projectSaveSuccess,
    TResult Function()? saveLoading,
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
    required TResult Function(_ProjectSaveSuccess value) projectSaveSuccess,
    required TResult Function(_Loading value) saveLoading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult? Function(_Loading value)? saveLoading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult Function(_Loading value)? saveLoading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProjectListState {
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
    extends _$ProjectListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProjectListState.initial()';
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
    required TResult Function() projectSaveSuccess,
    required TResult Function() saveLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? projectSaveSuccess,
    TResult? Function()? saveLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? projectSaveSuccess,
    TResult Function()? saveLoading,
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
    required TResult Function(_ProjectSaveSuccess value) projectSaveSuccess,
    required TResult Function(_Loading value) saveLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult? Function(_Loading value)? saveLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult Function(_Loading value)? saveLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProjectSaveSuccessImplCopyWith<$Res> {
  factory _$$ProjectSaveSuccessImplCopyWith(_$ProjectSaveSuccessImpl value,
          $Res Function(_$ProjectSaveSuccessImpl) then) =
      __$$ProjectSaveSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectSaveSuccessImplCopyWithImpl<$Res>
    extends _$ProjectListStateCopyWithImpl<$Res, _$ProjectSaveSuccessImpl>
    implements _$$ProjectSaveSuccessImplCopyWith<$Res> {
  __$$ProjectSaveSuccessImplCopyWithImpl(_$ProjectSaveSuccessImpl _value,
      $Res Function(_$ProjectSaveSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectSaveSuccessImpl implements _ProjectSaveSuccess {
  const _$ProjectSaveSuccessImpl();

  @override
  String toString() {
    return 'ProjectListState.projectSaveSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectSaveSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() projectSaveSuccess,
    required TResult Function() saveLoading,
  }) {
    return projectSaveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? projectSaveSuccess,
    TResult? Function()? saveLoading,
  }) {
    return projectSaveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? projectSaveSuccess,
    TResult Function()? saveLoading,
    required TResult orElse(),
  }) {
    if (projectSaveSuccess != null) {
      return projectSaveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectSaveSuccess value) projectSaveSuccess,
    required TResult Function(_Loading value) saveLoading,
  }) {
    return projectSaveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult? Function(_Loading value)? saveLoading,
  }) {
    return projectSaveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult Function(_Loading value)? saveLoading,
    required TResult orElse(),
  }) {
    if (projectSaveSuccess != null) {
      return projectSaveSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProjectSaveSuccess implements ProjectListState {
  const factory _ProjectSaveSuccess() = _$ProjectSaveSuccessImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProjectListStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ProjectListState.saveLoading()';
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
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() projectSaveSuccess,
    required TResult Function() saveLoading,
  }) {
    return saveLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? projectSaveSuccess,
    TResult? Function()? saveLoading,
  }) {
    return saveLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? projectSaveSuccess,
    TResult Function()? saveLoading,
    required TResult orElse(),
  }) {
    if (saveLoading != null) {
      return saveLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectSaveSuccess value) projectSaveSuccess,
    required TResult Function(_Loading value) saveLoading,
  }) {
    return saveLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult? Function(_Loading value)? saveLoading,
  }) {
    return saveLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectSaveSuccess value)? projectSaveSuccess,
    TResult Function(_Loading value)? saveLoading,
    required TResult orElse(),
  }) {
    if (saveLoading != null) {
      return saveLoading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProjectListState {
  const factory _Loading() = _$LoadingImpl;
}
