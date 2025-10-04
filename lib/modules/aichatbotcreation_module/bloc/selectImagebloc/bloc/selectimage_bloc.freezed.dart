// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectimage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectimageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String option) selectimage,
    required TResult Function(String imagepath) uploadimagetofirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String option)? selectimage,
    TResult? Function(String imagepath)? uploadimagetofirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String option)? selectimage,
    TResult Function(String imagepath)? uploadimagetofirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_selectimage value) selectimage,
    required TResult Function(_uploadimagetofirebase value)
        uploadimagetofirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
    TResult? Function(_uploadimagetofirebase value)? uploadimagetofirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    TResult Function(_uploadimagetofirebase value)? uploadimagetofirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectimageEventCopyWith<$Res> {
  factory $SelectimageEventCopyWith(
          SelectimageEvent value, $Res Function(SelectimageEvent) then) =
      _$SelectimageEventCopyWithImpl<$Res, SelectimageEvent>;
}

/// @nodoc
class _$SelectimageEventCopyWithImpl<$Res, $Val extends SelectimageEvent>
    implements $SelectimageEventCopyWith<$Res> {
  _$SelectimageEventCopyWithImpl(this._value, this._then);

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
    extends _$SelectimageEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SelectimageEvent.started()';
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
    required TResult Function(String option) selectimage,
    required TResult Function(String imagepath) uploadimagetofirebase,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String option)? selectimage,
    TResult? Function(String imagepath)? uploadimagetofirebase,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String option)? selectimage,
    TResult Function(String imagepath)? uploadimagetofirebase,
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
    required TResult Function(_selectimage value) selectimage,
    required TResult Function(_uploadimagetofirebase value)
        uploadimagetofirebase,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
    TResult? Function(_uploadimagetofirebase value)? uploadimagetofirebase,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    TResult Function(_uploadimagetofirebase value)? uploadimagetofirebase,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelectimageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$selectimageImplCopyWith<$Res> {
  factory _$$selectimageImplCopyWith(
          _$selectimageImpl value, $Res Function(_$selectimageImpl) then) =
      __$$selectimageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String option});
}

/// @nodoc
class __$$selectimageImplCopyWithImpl<$Res>
    extends _$SelectimageEventCopyWithImpl<$Res, _$selectimageImpl>
    implements _$$selectimageImplCopyWith<$Res> {
  __$$selectimageImplCopyWithImpl(
      _$selectimageImpl _value, $Res Function(_$selectimageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
  }) {
    return _then(_$selectimageImpl(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$selectimageImpl implements _selectimage {
  const _$selectimageImpl({required this.option});

  @override
  final String option;

  @override
  String toString() {
    return 'SelectimageEvent.selectimage(option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectimageImpl &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectimageImplCopyWith<_$selectimageImpl> get copyWith =>
      __$$selectimageImplCopyWithImpl<_$selectimageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String option) selectimage,
    required TResult Function(String imagepath) uploadimagetofirebase,
  }) {
    return selectimage(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String option)? selectimage,
    TResult? Function(String imagepath)? uploadimagetofirebase,
  }) {
    return selectimage?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String option)? selectimage,
    TResult Function(String imagepath)? uploadimagetofirebase,
    required TResult orElse(),
  }) {
    if (selectimage != null) {
      return selectimage(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_selectimage value) selectimage,
    required TResult Function(_uploadimagetofirebase value)
        uploadimagetofirebase,
  }) {
    return selectimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
    TResult? Function(_uploadimagetofirebase value)? uploadimagetofirebase,
  }) {
    return selectimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    TResult Function(_uploadimagetofirebase value)? uploadimagetofirebase,
    required TResult orElse(),
  }) {
    if (selectimage != null) {
      return selectimage(this);
    }
    return orElse();
  }
}

abstract class _selectimage implements SelectimageEvent {
  const factory _selectimage({required final String option}) =
      _$selectimageImpl;

  String get option;
  @JsonKey(ignore: true)
  _$$selectimageImplCopyWith<_$selectimageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$uploadimagetofirebaseImplCopyWith<$Res> {
  factory _$$uploadimagetofirebaseImplCopyWith(
          _$uploadimagetofirebaseImpl value,
          $Res Function(_$uploadimagetofirebaseImpl) then) =
      __$$uploadimagetofirebaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagepath});
}

/// @nodoc
class __$$uploadimagetofirebaseImplCopyWithImpl<$Res>
    extends _$SelectimageEventCopyWithImpl<$Res, _$uploadimagetofirebaseImpl>
    implements _$$uploadimagetofirebaseImplCopyWith<$Res> {
  __$$uploadimagetofirebaseImplCopyWithImpl(_$uploadimagetofirebaseImpl _value,
      $Res Function(_$uploadimagetofirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagepath = null,
  }) {
    return _then(_$uploadimagetofirebaseImpl(
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$uploadimagetofirebaseImpl implements _uploadimagetofirebase {
  const _$uploadimagetofirebaseImpl({required this.imagepath});

  @override
  final String imagepath;

  @override
  String toString() {
    return 'SelectimageEvent.uploadimagetofirebase(imagepath: $imagepath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$uploadimagetofirebaseImpl &&
            (identical(other.imagepath, imagepath) ||
                other.imagepath == imagepath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagepath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$uploadimagetofirebaseImplCopyWith<_$uploadimagetofirebaseImpl>
      get copyWith => __$$uploadimagetofirebaseImplCopyWithImpl<
          _$uploadimagetofirebaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String option) selectimage,
    required TResult Function(String imagepath) uploadimagetofirebase,
  }) {
    return uploadimagetofirebase(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String option)? selectimage,
    TResult? Function(String imagepath)? uploadimagetofirebase,
  }) {
    return uploadimagetofirebase?.call(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String option)? selectimage,
    TResult Function(String imagepath)? uploadimagetofirebase,
    required TResult orElse(),
  }) {
    if (uploadimagetofirebase != null) {
      return uploadimagetofirebase(imagepath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_selectimage value) selectimage,
    required TResult Function(_uploadimagetofirebase value)
        uploadimagetofirebase,
  }) {
    return uploadimagetofirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
    TResult? Function(_uploadimagetofirebase value)? uploadimagetofirebase,
  }) {
    return uploadimagetofirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    TResult Function(_uploadimagetofirebase value)? uploadimagetofirebase,
    required TResult orElse(),
  }) {
    if (uploadimagetofirebase != null) {
      return uploadimagetofirebase(this);
    }
    return orElse();
  }
}

abstract class _uploadimagetofirebase implements SelectimageEvent {
  const factory _uploadimagetofirebase({required final String imagepath}) =
      _$uploadimagetofirebaseImpl;

  String get imagepath;
  @JsonKey(ignore: true)
  _$$uploadimagetofirebaseImplCopyWith<_$uploadimagetofirebaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectimageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagepath) selectedimage,
    required TResult Function() error,
    required TResult Function(String imagepath) uploadedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagepath)? selectedimage,
    TResult? Function()? error,
    TResult? Function(String imagepath)? uploadedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagepath)? selectedimage,
    TResult Function()? error,
    TResult Function(String imagepath)? uploadedimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_selectedimage value) selectedimage,
    required TResult Function(_error value) error,
    required TResult Function(_uploadedimage value) uploadedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_selectedimage value)? selectedimage,
    TResult? Function(_error value)? error,
    TResult? Function(_uploadedimage value)? uploadedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_selectedimage value)? selectedimage,
    TResult Function(_error value)? error,
    TResult Function(_uploadedimage value)? uploadedimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectimageStateCopyWith<$Res> {
  factory $SelectimageStateCopyWith(
          SelectimageState value, $Res Function(SelectimageState) then) =
      _$SelectimageStateCopyWithImpl<$Res, SelectimageState>;
}

/// @nodoc
class _$SelectimageStateCopyWithImpl<$Res, $Val extends SelectimageState>
    implements $SelectimageStateCopyWith<$Res> {
  _$SelectimageStateCopyWithImpl(this._value, this._then);

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
    extends _$SelectimageStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SelectimageState.initial()';
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
    required TResult Function(String imagepath) selectedimage,
    required TResult Function() error,
    required TResult Function(String imagepath) uploadedimage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagepath)? selectedimage,
    TResult? Function()? error,
    TResult? Function(String imagepath)? uploadedimage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagepath)? selectedimage,
    TResult Function()? error,
    TResult Function(String imagepath)? uploadedimage,
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
    required TResult Function(_selectedimage value) selectedimage,
    required TResult Function(_error value) error,
    required TResult Function(_uploadedimage value) uploadedimage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_selectedimage value)? selectedimage,
    TResult? Function(_error value)? error,
    TResult? Function(_uploadedimage value)? uploadedimage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_selectedimage value)? selectedimage,
    TResult Function(_error value)? error,
    TResult Function(_uploadedimage value)? uploadedimage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SelectimageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$selectedimageImplCopyWith<$Res> {
  factory _$$selectedimageImplCopyWith(
          _$selectedimageImpl value, $Res Function(_$selectedimageImpl) then) =
      __$$selectedimageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagepath});
}

/// @nodoc
class __$$selectedimageImplCopyWithImpl<$Res>
    extends _$SelectimageStateCopyWithImpl<$Res, _$selectedimageImpl>
    implements _$$selectedimageImplCopyWith<$Res> {
  __$$selectedimageImplCopyWithImpl(
      _$selectedimageImpl _value, $Res Function(_$selectedimageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagepath = null,
  }) {
    return _then(_$selectedimageImpl(
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$selectedimageImpl implements _selectedimage {
  const _$selectedimageImpl({required this.imagepath});

  @override
  final String imagepath;

  @override
  String toString() {
    return 'SelectimageState.selectedimage(imagepath: $imagepath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectedimageImpl &&
            (identical(other.imagepath, imagepath) ||
                other.imagepath == imagepath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagepath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectedimageImplCopyWith<_$selectedimageImpl> get copyWith =>
      __$$selectedimageImplCopyWithImpl<_$selectedimageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagepath) selectedimage,
    required TResult Function() error,
    required TResult Function(String imagepath) uploadedimage,
  }) {
    return selectedimage(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagepath)? selectedimage,
    TResult? Function()? error,
    TResult? Function(String imagepath)? uploadedimage,
  }) {
    return selectedimage?.call(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagepath)? selectedimage,
    TResult Function()? error,
    TResult Function(String imagepath)? uploadedimage,
    required TResult orElse(),
  }) {
    if (selectedimage != null) {
      return selectedimage(imagepath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_selectedimage value) selectedimage,
    required TResult Function(_error value) error,
    required TResult Function(_uploadedimage value) uploadedimage,
  }) {
    return selectedimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_selectedimage value)? selectedimage,
    TResult? Function(_error value)? error,
    TResult? Function(_uploadedimage value)? uploadedimage,
  }) {
    return selectedimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_selectedimage value)? selectedimage,
    TResult Function(_error value)? error,
    TResult Function(_uploadedimage value)? uploadedimage,
    required TResult orElse(),
  }) {
    if (selectedimage != null) {
      return selectedimage(this);
    }
    return orElse();
  }
}

abstract class _selectedimage implements SelectimageState {
  const factory _selectedimage({required final String imagepath}) =
      _$selectedimageImpl;

  String get imagepath;
  @JsonKey(ignore: true)
  _$$selectedimageImplCopyWith<_$selectedimageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$SelectimageStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$errorImpl implements _error {
  const _$errorImpl();

  @override
  String toString() {
    return 'SelectimageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$errorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagepath) selectedimage,
    required TResult Function() error,
    required TResult Function(String imagepath) uploadedimage,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagepath)? selectedimage,
    TResult? Function()? error,
    TResult? Function(String imagepath)? uploadedimage,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagepath)? selectedimage,
    TResult Function()? error,
    TResult Function(String imagepath)? uploadedimage,
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
    required TResult Function(_selectedimage value) selectedimage,
    required TResult Function(_error value) error,
    required TResult Function(_uploadedimage value) uploadedimage,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_selectedimage value)? selectedimage,
    TResult? Function(_error value)? error,
    TResult? Function(_uploadedimage value)? uploadedimage,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_selectedimage value)? selectedimage,
    TResult Function(_error value)? error,
    TResult Function(_uploadedimage value)? uploadedimage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements SelectimageState {
  const factory _error() = _$errorImpl;
}

/// @nodoc
abstract class _$$uploadedimageImplCopyWith<$Res> {
  factory _$$uploadedimageImplCopyWith(
          _$uploadedimageImpl value, $Res Function(_$uploadedimageImpl) then) =
      __$$uploadedimageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagepath});
}

/// @nodoc
class __$$uploadedimageImplCopyWithImpl<$Res>
    extends _$SelectimageStateCopyWithImpl<$Res, _$uploadedimageImpl>
    implements _$$uploadedimageImplCopyWith<$Res> {
  __$$uploadedimageImplCopyWithImpl(
      _$uploadedimageImpl _value, $Res Function(_$uploadedimageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagepath = null,
  }) {
    return _then(_$uploadedimageImpl(
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$uploadedimageImpl implements _uploadedimage {
  const _$uploadedimageImpl({required this.imagepath});

  @override
  final String imagepath;

  @override
  String toString() {
    return 'SelectimageState.uploadedimage(imagepath: $imagepath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$uploadedimageImpl &&
            (identical(other.imagepath, imagepath) ||
                other.imagepath == imagepath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagepath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$uploadedimageImplCopyWith<_$uploadedimageImpl> get copyWith =>
      __$$uploadedimageImplCopyWithImpl<_$uploadedimageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagepath) selectedimage,
    required TResult Function() error,
    required TResult Function(String imagepath) uploadedimage,
  }) {
    return uploadedimage(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagepath)? selectedimage,
    TResult? Function()? error,
    TResult? Function(String imagepath)? uploadedimage,
  }) {
    return uploadedimage?.call(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagepath)? selectedimage,
    TResult Function()? error,
    TResult Function(String imagepath)? uploadedimage,
    required TResult orElse(),
  }) {
    if (uploadedimage != null) {
      return uploadedimage(imagepath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_selectedimage value) selectedimage,
    required TResult Function(_error value) error,
    required TResult Function(_uploadedimage value) uploadedimage,
  }) {
    return uploadedimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_selectedimage value)? selectedimage,
    TResult? Function(_error value)? error,
    TResult? Function(_uploadedimage value)? uploadedimage,
  }) {
    return uploadedimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_selectedimage value)? selectedimage,
    TResult Function(_error value)? error,
    TResult Function(_uploadedimage value)? uploadedimage,
    required TResult orElse(),
  }) {
    if (uploadedimage != null) {
      return uploadedimage(this);
    }
    return orElse();
  }
}

abstract class _uploadedimage implements SelectimageState {
  const factory _uploadedimage({required final String imagepath}) =
      _$uploadedimageImpl;

  String get imagepath;
  @JsonKey(ignore: true)
  _$$uploadedimageImplCopyWith<_$uploadedimageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
