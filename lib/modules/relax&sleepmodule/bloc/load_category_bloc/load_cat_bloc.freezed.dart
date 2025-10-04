// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_cat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadCatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCatEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCatEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCatEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getCatEvent value) getCatEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getCatEvent value)? getCatEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getCatEvent value)? getCatEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCatEventCopyWith<$Res> {
  factory $LoadCatEventCopyWith(
          LoadCatEvent value, $Res Function(LoadCatEvent) then) =
      _$LoadCatEventCopyWithImpl<$Res, LoadCatEvent>;
}

/// @nodoc
class _$LoadCatEventCopyWithImpl<$Res, $Val extends LoadCatEvent>
    implements $LoadCatEventCopyWith<$Res> {
  _$LoadCatEventCopyWithImpl(this._value, this._then);

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
    extends _$LoadCatEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'LoadCatEvent.started()';
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
    required TResult Function() getCatEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCatEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCatEvent,
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
    required TResult Function(_getCatEvent value) getCatEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getCatEvent value)? getCatEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getCatEvent value)? getCatEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoadCatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$getCatEventImplCopyWith<$Res> {
  factory _$$getCatEventImplCopyWith(
          _$getCatEventImpl value, $Res Function(_$getCatEventImpl) then) =
      __$$getCatEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getCatEventImplCopyWithImpl<$Res>
    extends _$LoadCatEventCopyWithImpl<$Res, _$getCatEventImpl>
    implements _$$getCatEventImplCopyWith<$Res> {
  __$$getCatEventImplCopyWithImpl(
      _$getCatEventImpl _value, $Res Function(_$getCatEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getCatEventImpl implements _getCatEvent {
  const _$getCatEventImpl();

  @override
  String toString() {
    return 'LoadCatEvent.getCatEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getCatEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCatEvent,
  }) {
    return getCatEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCatEvent,
  }) {
    return getCatEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCatEvent,
    required TResult orElse(),
  }) {
    if (getCatEvent != null) {
      return getCatEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getCatEvent value) getCatEvent,
  }) {
    return getCatEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getCatEvent value)? getCatEvent,
  }) {
    return getCatEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getCatEvent value)? getCatEvent,
    required TResult orElse(),
  }) {
    if (getCatEvent != null) {
      return getCatEvent(this);
    }
    return orElse();
  }
}

abstract class _getCatEvent implements LoadCatEvent {
  const factory _getCatEvent() = _$getCatEventImpl;
}

/// @nodoc
mixin _$LoadCatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> catNames) catGetSuccess,
    required TResult Function() catGetFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> catNames)? catGetSuccess,
    TResult? Function()? catGetFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> catNames)? catGetSuccess,
    TResult Function()? catGetFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_catGetSuccess value) catGetSuccess,
    required TResult Function(_catGetFail value) catGetFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_catGetSuccess value)? catGetSuccess,
    TResult? Function(_catGetFail value)? catGetFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_catGetSuccess value)? catGetSuccess,
    TResult Function(_catGetFail value)? catGetFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCatStateCopyWith<$Res> {
  factory $LoadCatStateCopyWith(
          LoadCatState value, $Res Function(LoadCatState) then) =
      _$LoadCatStateCopyWithImpl<$Res, LoadCatState>;
}

/// @nodoc
class _$LoadCatStateCopyWithImpl<$Res, $Val extends LoadCatState>
    implements $LoadCatStateCopyWith<$Res> {
  _$LoadCatStateCopyWithImpl(this._value, this._then);

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
    extends _$LoadCatStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LoadCatState.initial()';
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
    required TResult Function(List<String> catNames) catGetSuccess,
    required TResult Function() catGetFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> catNames)? catGetSuccess,
    TResult? Function()? catGetFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> catNames)? catGetSuccess,
    TResult Function()? catGetFail,
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
    required TResult Function(_catGetSuccess value) catGetSuccess,
    required TResult Function(_catGetFail value) catGetFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_catGetSuccess value)? catGetSuccess,
    TResult? Function(_catGetFail value)? catGetFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_catGetSuccess value)? catGetSuccess,
    TResult Function(_catGetFail value)? catGetFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoadCatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$catGetSuccessImplCopyWith<$Res> {
  factory _$$catGetSuccessImplCopyWith(
          _$catGetSuccessImpl value, $Res Function(_$catGetSuccessImpl) then) =
      __$$catGetSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> catNames});
}

/// @nodoc
class __$$catGetSuccessImplCopyWithImpl<$Res>
    extends _$LoadCatStateCopyWithImpl<$Res, _$catGetSuccessImpl>
    implements _$$catGetSuccessImplCopyWith<$Res> {
  __$$catGetSuccessImplCopyWithImpl(
      _$catGetSuccessImpl _value, $Res Function(_$catGetSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catNames = null,
  }) {
    return _then(_$catGetSuccessImpl(
      catNames: null == catNames
          ? _value._catNames
          : catNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$catGetSuccessImpl implements _catGetSuccess {
  const _$catGetSuccessImpl({required final List<String> catNames})
      : _catNames = catNames;

  final List<String> _catNames;
  @override
  List<String> get catNames {
    if (_catNames is EqualUnmodifiableListView) return _catNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catNames);
  }

  @override
  String toString() {
    return 'LoadCatState.catGetSuccess(catNames: $catNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$catGetSuccessImpl &&
            const DeepCollectionEquality().equals(other._catNames, _catNames));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_catNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$catGetSuccessImplCopyWith<_$catGetSuccessImpl> get copyWith =>
      __$$catGetSuccessImplCopyWithImpl<_$catGetSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> catNames) catGetSuccess,
    required TResult Function() catGetFail,
  }) {
    return catGetSuccess(catNames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> catNames)? catGetSuccess,
    TResult? Function()? catGetFail,
  }) {
    return catGetSuccess?.call(catNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> catNames)? catGetSuccess,
    TResult Function()? catGetFail,
    required TResult orElse(),
  }) {
    if (catGetSuccess != null) {
      return catGetSuccess(catNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_catGetSuccess value) catGetSuccess,
    required TResult Function(_catGetFail value) catGetFail,
  }) {
    return catGetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_catGetSuccess value)? catGetSuccess,
    TResult? Function(_catGetFail value)? catGetFail,
  }) {
    return catGetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_catGetSuccess value)? catGetSuccess,
    TResult Function(_catGetFail value)? catGetFail,
    required TResult orElse(),
  }) {
    if (catGetSuccess != null) {
      return catGetSuccess(this);
    }
    return orElse();
  }
}

abstract class _catGetSuccess implements LoadCatState {
  const factory _catGetSuccess({required final List<String> catNames}) =
      _$catGetSuccessImpl;

  List<String> get catNames;
  @JsonKey(ignore: true)
  _$$catGetSuccessImplCopyWith<_$catGetSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$catGetFailImplCopyWith<$Res> {
  factory _$$catGetFailImplCopyWith(
          _$catGetFailImpl value, $Res Function(_$catGetFailImpl) then) =
      __$$catGetFailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$catGetFailImplCopyWithImpl<$Res>
    extends _$LoadCatStateCopyWithImpl<$Res, _$catGetFailImpl>
    implements _$$catGetFailImplCopyWith<$Res> {
  __$$catGetFailImplCopyWithImpl(
      _$catGetFailImpl _value, $Res Function(_$catGetFailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$catGetFailImpl implements _catGetFail {
  const _$catGetFailImpl();

  @override
  String toString() {
    return 'LoadCatState.catGetFail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$catGetFailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> catNames) catGetSuccess,
    required TResult Function() catGetFail,
  }) {
    return catGetFail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> catNames)? catGetSuccess,
    TResult? Function()? catGetFail,
  }) {
    return catGetFail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> catNames)? catGetSuccess,
    TResult Function()? catGetFail,
    required TResult orElse(),
  }) {
    if (catGetFail != null) {
      return catGetFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_catGetSuccess value) catGetSuccess,
    required TResult Function(_catGetFail value) catGetFail,
  }) {
    return catGetFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_catGetSuccess value)? catGetSuccess,
    TResult? Function(_catGetFail value)? catGetFail,
  }) {
    return catGetFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_catGetSuccess value)? catGetSuccess,
    TResult Function(_catGetFail value)? catGetFail,
    required TResult orElse(),
  }) {
    if (catGetFail != null) {
      return catGetFail(this);
    }
    return orElse();
  }
}

abstract class _catGetFail implements LoadCatState {
  const factory _catGetFail() = _$catGetFailImpl;
}
