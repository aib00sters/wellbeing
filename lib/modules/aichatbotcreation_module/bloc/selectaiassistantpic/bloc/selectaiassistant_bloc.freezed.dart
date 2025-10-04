// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectaiassistant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectaiassistantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String imagelink) selectedaiassistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imagelink)? selectedaiassistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imagelink)? selectedaiassistant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selectedaiassistant value) selectedaiassistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selectedaiassistant value)? selectedaiassistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selectedaiassistant value)? selectedaiassistant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectaiassistantEventCopyWith<$Res> {
  factory $SelectaiassistantEventCopyWith(SelectaiassistantEvent value,
          $Res Function(SelectaiassistantEvent) then) =
      _$SelectaiassistantEventCopyWithImpl<$Res, SelectaiassistantEvent>;
}

/// @nodoc
class _$SelectaiassistantEventCopyWithImpl<$Res,
        $Val extends SelectaiassistantEvent>
    implements $SelectaiassistantEventCopyWith<$Res> {
  _$SelectaiassistantEventCopyWithImpl(this._value, this._then);

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
    extends _$SelectaiassistantEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SelectaiassistantEvent.started()';
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
    required TResult Function(String imagelink) selectedaiassistant,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imagelink)? selectedaiassistant,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imagelink)? selectedaiassistant,
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
    required TResult Function(_Selectedaiassistant value) selectedaiassistant,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selectedaiassistant value)? selectedaiassistant,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selectedaiassistant value)? selectedaiassistant,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelectaiassistantEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedaiassistantImplCopyWith<$Res> {
  factory _$$SelectedaiassistantImplCopyWith(_$SelectedaiassistantImpl value,
          $Res Function(_$SelectedaiassistantImpl) then) =
      __$$SelectedaiassistantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagelink});
}

/// @nodoc
class __$$SelectedaiassistantImplCopyWithImpl<$Res>
    extends _$SelectaiassistantEventCopyWithImpl<$Res,
        _$SelectedaiassistantImpl>
    implements _$$SelectedaiassistantImplCopyWith<$Res> {
  __$$SelectedaiassistantImplCopyWithImpl(_$SelectedaiassistantImpl _value,
      $Res Function(_$SelectedaiassistantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagelink = null,
  }) {
    return _then(_$SelectedaiassistantImpl(
      imagelink: null == imagelink
          ? _value.imagelink
          : imagelink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedaiassistantImpl implements _Selectedaiassistant {
  const _$SelectedaiassistantImpl({required this.imagelink});

  @override
  final String imagelink;

  @override
  String toString() {
    return 'SelectaiassistantEvent.selectedaiassistant(imagelink: $imagelink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedaiassistantImpl &&
            (identical(other.imagelink, imagelink) ||
                other.imagelink == imagelink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagelink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedaiassistantImplCopyWith<_$SelectedaiassistantImpl> get copyWith =>
      __$$SelectedaiassistantImplCopyWithImpl<_$SelectedaiassistantImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String imagelink) selectedaiassistant,
  }) {
    return selectedaiassistant(imagelink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imagelink)? selectedaiassistant,
  }) {
    return selectedaiassistant?.call(imagelink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imagelink)? selectedaiassistant,
    required TResult orElse(),
  }) {
    if (selectedaiassistant != null) {
      return selectedaiassistant(imagelink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selectedaiassistant value) selectedaiassistant,
  }) {
    return selectedaiassistant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selectedaiassistant value)? selectedaiassistant,
  }) {
    return selectedaiassistant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selectedaiassistant value)? selectedaiassistant,
    required TResult orElse(),
  }) {
    if (selectedaiassistant != null) {
      return selectedaiassistant(this);
    }
    return orElse();
  }
}

abstract class _Selectedaiassistant implements SelectaiassistantEvent {
  const factory _Selectedaiassistant({required final String imagelink}) =
      _$SelectedaiassistantImpl;

  String get imagelink;
  @JsonKey(ignore: true)
  _$$SelectedaiassistantImplCopyWith<_$SelectedaiassistantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectaiassistantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagelink) aiassistantselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagelink)? aiassistantselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagelink)? aiassistantselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_aiassistantselected value) aiassistantselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_aiassistantselected value)? aiassistantselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_aiassistantselected value)? aiassistantselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectaiassistantStateCopyWith<$Res> {
  factory $SelectaiassistantStateCopyWith(SelectaiassistantState value,
          $Res Function(SelectaiassistantState) then) =
      _$SelectaiassistantStateCopyWithImpl<$Res, SelectaiassistantState>;
}

/// @nodoc
class _$SelectaiassistantStateCopyWithImpl<$Res,
        $Val extends SelectaiassistantState>
    implements $SelectaiassistantStateCopyWith<$Res> {
  _$SelectaiassistantStateCopyWithImpl(this._value, this._then);

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
    extends _$SelectaiassistantStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SelectaiassistantState.initial()';
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
    required TResult Function(String imagelink) aiassistantselected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagelink)? aiassistantselected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagelink)? aiassistantselected,
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
    required TResult Function(_aiassistantselected value) aiassistantselected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_aiassistantselected value)? aiassistantselected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_aiassistantselected value)? aiassistantselected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SelectaiassistantState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$aiassistantselectedImplCopyWith<$Res> {
  factory _$$aiassistantselectedImplCopyWith(_$aiassistantselectedImpl value,
          $Res Function(_$aiassistantselectedImpl) then) =
      __$$aiassistantselectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagelink});
}

/// @nodoc
class __$$aiassistantselectedImplCopyWithImpl<$Res>
    extends _$SelectaiassistantStateCopyWithImpl<$Res,
        _$aiassistantselectedImpl>
    implements _$$aiassistantselectedImplCopyWith<$Res> {
  __$$aiassistantselectedImplCopyWithImpl(_$aiassistantselectedImpl _value,
      $Res Function(_$aiassistantselectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagelink = null,
  }) {
    return _then(_$aiassistantselectedImpl(
      imagelink: null == imagelink
          ? _value.imagelink
          : imagelink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$aiassistantselectedImpl implements _aiassistantselected {
  const _$aiassistantselectedImpl({required this.imagelink});

  @override
  final String imagelink;

  @override
  String toString() {
    return 'SelectaiassistantState.aiassistantselected(imagelink: $imagelink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$aiassistantselectedImpl &&
            (identical(other.imagelink, imagelink) ||
                other.imagelink == imagelink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagelink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$aiassistantselectedImplCopyWith<_$aiassistantselectedImpl> get copyWith =>
      __$$aiassistantselectedImplCopyWithImpl<_$aiassistantselectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagelink) aiassistantselected,
  }) {
    return aiassistantselected(imagelink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagelink)? aiassistantselected,
  }) {
    return aiassistantselected?.call(imagelink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagelink)? aiassistantselected,
    required TResult orElse(),
  }) {
    if (aiassistantselected != null) {
      return aiassistantselected(imagelink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_aiassistantselected value) aiassistantselected,
  }) {
    return aiassistantselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_aiassistantselected value)? aiassistantselected,
  }) {
    return aiassistantselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_aiassistantselected value)? aiassistantselected,
    required TResult orElse(),
  }) {
    if (aiassistantselected != null) {
      return aiassistantselected(this);
    }
    return orElse();
  }
}

abstract class _aiassistantselected implements SelectaiassistantState {
  const factory _aiassistantselected({required final String imagelink}) =
      _$aiassistantselectedImpl;

  String get imagelink;
  @JsonKey(ignore: true)
  _$$aiassistantselectedImplCopyWith<_$aiassistantselectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
