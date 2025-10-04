// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_widget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunityWidgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DataToCommunityWidget> dataToCommunityWidgetLise)
        loadWidget,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        loadWidget,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        loadWidget,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWidget value) loadWidget,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWidget value)? loadWidget,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWidget value)? loadWidget,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityWidgetEventCopyWith<$Res> {
  factory $CommunityWidgetEventCopyWith(CommunityWidgetEvent value,
          $Res Function(CommunityWidgetEvent) then) =
      _$CommunityWidgetEventCopyWithImpl<$Res, CommunityWidgetEvent>;
}

/// @nodoc
class _$CommunityWidgetEventCopyWithImpl<$Res,
        $Val extends CommunityWidgetEvent>
    implements $CommunityWidgetEventCopyWith<$Res> {
  _$CommunityWidgetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadWidgetImplCopyWith<$Res> {
  factory _$$LoadWidgetImplCopyWith(
          _$LoadWidgetImpl value, $Res Function(_$LoadWidgetImpl) then) =
      __$$LoadWidgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DataToCommunityWidget> dataToCommunityWidgetLise});
}

/// @nodoc
class __$$LoadWidgetImplCopyWithImpl<$Res>
    extends _$CommunityWidgetEventCopyWithImpl<$Res, _$LoadWidgetImpl>
    implements _$$LoadWidgetImplCopyWith<$Res> {
  __$$LoadWidgetImplCopyWithImpl(
      _$LoadWidgetImpl _value, $Res Function(_$LoadWidgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataToCommunityWidgetLise = null,
  }) {
    return _then(_$LoadWidgetImpl(
      dataToCommunityWidgetLise: null == dataToCommunityWidgetLise
          ? _value._dataToCommunityWidgetLise
          : dataToCommunityWidgetLise // ignore: cast_nullable_to_non_nullable
              as List<DataToCommunityWidget>,
    ));
  }
}

/// @nodoc

class _$LoadWidgetImpl implements _LoadWidget {
  const _$LoadWidgetImpl(
      {required final List<DataToCommunityWidget> dataToCommunityWidgetLise})
      : _dataToCommunityWidgetLise = dataToCommunityWidgetLise;

  final List<DataToCommunityWidget> _dataToCommunityWidgetLise;
  @override
  List<DataToCommunityWidget> get dataToCommunityWidgetLise {
    if (_dataToCommunityWidgetLise is EqualUnmodifiableListView)
      return _dataToCommunityWidgetLise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataToCommunityWidgetLise);
  }

  @override
  String toString() {
    return 'CommunityWidgetEvent.loadWidget(dataToCommunityWidgetLise: $dataToCommunityWidgetLise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWidgetImpl &&
            const DeepCollectionEquality().equals(
                other._dataToCommunityWidgetLise, _dataToCommunityWidgetLise));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_dataToCommunityWidgetLise));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWidgetImplCopyWith<_$LoadWidgetImpl> get copyWith =>
      __$$LoadWidgetImplCopyWithImpl<_$LoadWidgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DataToCommunityWidget> dataToCommunityWidgetLise)
        loadWidget,
    required TResult Function() started,
  }) {
    return loadWidget(dataToCommunityWidgetLise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        loadWidget,
    TResult? Function()? started,
  }) {
    return loadWidget?.call(dataToCommunityWidgetLise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        loadWidget,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (loadWidget != null) {
      return loadWidget(dataToCommunityWidgetLise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWidget value) loadWidget,
    required TResult Function(_Started value) started,
  }) {
    return loadWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWidget value)? loadWidget,
    TResult? Function(_Started value)? started,
  }) {
    return loadWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWidget value)? loadWidget,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (loadWidget != null) {
      return loadWidget(this);
    }
    return orElse();
  }
}

abstract class _LoadWidget implements CommunityWidgetEvent {
  const factory _LoadWidget(
      {required final List<DataToCommunityWidget>
          dataToCommunityWidgetLise}) = _$LoadWidgetImpl;

  List<DataToCommunityWidget> get dataToCommunityWidgetLise;
  @JsonKey(ignore: true)
  _$$LoadWidgetImplCopyWith<_$LoadWidgetImpl> get copyWith =>
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
    extends _$CommunityWidgetEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CommunityWidgetEvent.started()';
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
            List<DataToCommunityWidget> dataToCommunityWidgetLise)
        loadWidget,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        loadWidget,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        loadWidget,
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
    required TResult Function(_LoadWidget value) loadWidget,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWidget value)? loadWidget,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWidget value)? loadWidget,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommunityWidgetEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$CommunityWidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<DataToCommunityWidget> dataToCommunityWidgetLise)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityWidgetStateCopyWith<$Res> {
  factory $CommunityWidgetStateCopyWith(CommunityWidgetState value,
          $Res Function(CommunityWidgetState) then) =
      _$CommunityWidgetStateCopyWithImpl<$Res, CommunityWidgetState>;
}

/// @nodoc
class _$CommunityWidgetStateCopyWithImpl<$Res,
        $Val extends CommunityWidgetState>
    implements $CommunityWidgetStateCopyWith<$Res> {
  _$CommunityWidgetStateCopyWithImpl(this._value, this._then);

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
    extends _$CommunityWidgetStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CommunityWidgetState.initial()';
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
    required TResult Function(
            List<DataToCommunityWidget> dataToCommunityWidgetLise)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommunityWidgetState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DataToCommunityWidget> dataToCommunityWidgetLise});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$CommunityWidgetStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataToCommunityWidgetLise = null,
  }) {
    return _then(_$successImpl(
      dataToCommunityWidgetLise: null == dataToCommunityWidgetLise
          ? _value._dataToCommunityWidgetLise
          : dataToCommunityWidgetLise // ignore: cast_nullable_to_non_nullable
              as List<DataToCommunityWidget>,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(
      {required final List<DataToCommunityWidget> dataToCommunityWidgetLise})
      : _dataToCommunityWidgetLise = dataToCommunityWidgetLise;

  final List<DataToCommunityWidget> _dataToCommunityWidgetLise;
  @override
  List<DataToCommunityWidget> get dataToCommunityWidgetLise {
    if (_dataToCommunityWidgetLise is EqualUnmodifiableListView)
      return _dataToCommunityWidgetLise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataToCommunityWidgetLise);
  }

  @override
  String toString() {
    return 'CommunityWidgetState.success(dataToCommunityWidgetLise: $dataToCommunityWidgetLise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            const DeepCollectionEquality().equals(
                other._dataToCommunityWidgetLise, _dataToCommunityWidgetLise));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_dataToCommunityWidgetLise));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<DataToCommunityWidget> dataToCommunityWidgetLise)
        success,
  }) {
    return success(dataToCommunityWidgetLise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        success,
  }) {
    return success?.call(dataToCommunityWidgetLise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DataToCommunityWidget> dataToCommunityWidgetLise)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(dataToCommunityWidgetLise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements CommunityWidgetState {
  const factory _success(
      {required final List<DataToCommunityWidget>
          dataToCommunityWidgetLise}) = _$successImpl;

  List<DataToCommunityWidget> get dataToCommunityWidgetLise;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
