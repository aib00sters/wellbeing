// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_friend_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddFriendEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String frndRequestId, String userId, String userName)
        acceptFriendRequest,
    required TResult Function(String status, String toId) addFriendEvent,
    required TResult Function(String frndRequestId) cancelFriendRequest,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult? Function(String status, String toId)? addFriendEvent,
    TResult? Function(String frndRequestId)? cancelFriendRequest,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult Function(String status, String toId)? addFriendEvent,
    TResult Function(String frndRequestId)? cancelFriendRequest,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptFriendRequest value) acceptFriendRequest,
    required TResult Function(_AddFriendEvent value) addFriendEvent,
    required TResult Function(_CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult? Function(_AddFriendEvent value)? addFriendEvent,
    TResult? Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult Function(_AddFriendEvent value)? addFriendEvent,
    TResult Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFriendEventCopyWith<$Res> {
  factory $AddFriendEventCopyWith(
          AddFriendEvent value, $Res Function(AddFriendEvent) then) =
      _$AddFriendEventCopyWithImpl<$Res, AddFriendEvent>;
}

/// @nodoc
class _$AddFriendEventCopyWithImpl<$Res, $Val extends AddFriendEvent>
    implements $AddFriendEventCopyWith<$Res> {
  _$AddFriendEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AcceptFriendRequestImplCopyWith<$Res> {
  factory _$$AcceptFriendRequestImplCopyWith(_$AcceptFriendRequestImpl value,
          $Res Function(_$AcceptFriendRequestImpl) then) =
      __$$AcceptFriendRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String frndRequestId, String userId, String userName});
}

/// @nodoc
class __$$AcceptFriendRequestImplCopyWithImpl<$Res>
    extends _$AddFriendEventCopyWithImpl<$Res, _$AcceptFriendRequestImpl>
    implements _$$AcceptFriendRequestImplCopyWith<$Res> {
  __$$AcceptFriendRequestImplCopyWithImpl(_$AcceptFriendRequestImpl _value,
      $Res Function(_$AcceptFriendRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frndRequestId = null,
    Object? userId = null,
    Object? userName = null,
  }) {
    return _then(_$AcceptFriendRequestImpl(
      frndRequestId: null == frndRequestId
          ? _value.frndRequestId
          : frndRequestId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptFriendRequestImpl implements _AcceptFriendRequest {
  const _$AcceptFriendRequestImpl(
      {required this.frndRequestId,
      required this.userId,
      required this.userName});

  @override
  final String frndRequestId;
  @override
  final String userId;
  @override
  final String userName;

  @override
  String toString() {
    return 'AddFriendEvent.acceptFriendRequest(frndRequestId: $frndRequestId, userId: $userId, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptFriendRequestImpl &&
            (identical(other.frndRequestId, frndRequestId) ||
                other.frndRequestId == frndRequestId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frndRequestId, userId, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptFriendRequestImplCopyWith<_$AcceptFriendRequestImpl> get copyWith =>
      __$$AcceptFriendRequestImplCopyWithImpl<_$AcceptFriendRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String frndRequestId, String userId, String userName)
        acceptFriendRequest,
    required TResult Function(String status, String toId) addFriendEvent,
    required TResult Function(String frndRequestId) cancelFriendRequest,
    required TResult Function() started,
  }) {
    return acceptFriendRequest(frndRequestId, userId, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult? Function(String status, String toId)? addFriendEvent,
    TResult? Function(String frndRequestId)? cancelFriendRequest,
    TResult? Function()? started,
  }) {
    return acceptFriendRequest?.call(frndRequestId, userId, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult Function(String status, String toId)? addFriendEvent,
    TResult Function(String frndRequestId)? cancelFriendRequest,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (acceptFriendRequest != null) {
      return acceptFriendRequest(frndRequestId, userId, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptFriendRequest value) acceptFriendRequest,
    required TResult Function(_AddFriendEvent value) addFriendEvent,
    required TResult Function(_CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(_Started value) started,
  }) {
    return acceptFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult? Function(_AddFriendEvent value)? addFriendEvent,
    TResult? Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(_Started value)? started,
  }) {
    return acceptFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult Function(_AddFriendEvent value)? addFriendEvent,
    TResult Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (acceptFriendRequest != null) {
      return acceptFriendRequest(this);
    }
    return orElse();
  }
}

abstract class _AcceptFriendRequest implements AddFriendEvent {
  const factory _AcceptFriendRequest(
      {required final String frndRequestId,
      required final String userId,
      required final String userName}) = _$AcceptFriendRequestImpl;

  String get frndRequestId;
  String get userId;
  String get userName;
  @JsonKey(ignore: true)
  _$$AcceptFriendRequestImplCopyWith<_$AcceptFriendRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFriendEventImplCopyWith<$Res> {
  factory _$$AddFriendEventImplCopyWith(_$AddFriendEventImpl value,
          $Res Function(_$AddFriendEventImpl) then) =
      __$$AddFriendEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status, String toId});
}

/// @nodoc
class __$$AddFriendEventImplCopyWithImpl<$Res>
    extends _$AddFriendEventCopyWithImpl<$Res, _$AddFriendEventImpl>
    implements _$$AddFriendEventImplCopyWith<$Res> {
  __$$AddFriendEventImplCopyWithImpl(
      _$AddFriendEventImpl _value, $Res Function(_$AddFriendEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? toId = null,
  }) {
    return _then(_$AddFriendEventImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFriendEventImpl implements _AddFriendEvent {
  const _$AddFriendEventImpl({required this.status, required this.toId});

  @override
  final String status;
  @override
  final String toId;

  @override
  String toString() {
    return 'AddFriendEvent.addFriendEvent(status: $status, toId: $toId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFriendEventImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.toId, toId) || other.toId == toId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, toId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFriendEventImplCopyWith<_$AddFriendEventImpl> get copyWith =>
      __$$AddFriendEventImplCopyWithImpl<_$AddFriendEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String frndRequestId, String userId, String userName)
        acceptFriendRequest,
    required TResult Function(String status, String toId) addFriendEvent,
    required TResult Function(String frndRequestId) cancelFriendRequest,
    required TResult Function() started,
  }) {
    return addFriendEvent(status, toId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult? Function(String status, String toId)? addFriendEvent,
    TResult? Function(String frndRequestId)? cancelFriendRequest,
    TResult? Function()? started,
  }) {
    return addFriendEvent?.call(status, toId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult Function(String status, String toId)? addFriendEvent,
    TResult Function(String frndRequestId)? cancelFriendRequest,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (addFriendEvent != null) {
      return addFriendEvent(status, toId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptFriendRequest value) acceptFriendRequest,
    required TResult Function(_AddFriendEvent value) addFriendEvent,
    required TResult Function(_CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(_Started value) started,
  }) {
    return addFriendEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult? Function(_AddFriendEvent value)? addFriendEvent,
    TResult? Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(_Started value)? started,
  }) {
    return addFriendEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult Function(_AddFriendEvent value)? addFriendEvent,
    TResult Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (addFriendEvent != null) {
      return addFriendEvent(this);
    }
    return orElse();
  }
}

abstract class _AddFriendEvent implements AddFriendEvent {
  const factory _AddFriendEvent(
      {required final String status,
      required final String toId}) = _$AddFriendEventImpl;

  String get status;
  String get toId;
  @JsonKey(ignore: true)
  _$$AddFriendEventImplCopyWith<_$AddFriendEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelFriendRequestImplCopyWith<$Res> {
  factory _$$CancelFriendRequestImplCopyWith(_$CancelFriendRequestImpl value,
          $Res Function(_$CancelFriendRequestImpl) then) =
      __$$CancelFriendRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String frndRequestId});
}

/// @nodoc
class __$$CancelFriendRequestImplCopyWithImpl<$Res>
    extends _$AddFriendEventCopyWithImpl<$Res, _$CancelFriendRequestImpl>
    implements _$$CancelFriendRequestImplCopyWith<$Res> {
  __$$CancelFriendRequestImplCopyWithImpl(_$CancelFriendRequestImpl _value,
      $Res Function(_$CancelFriendRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frndRequestId = null,
  }) {
    return _then(_$CancelFriendRequestImpl(
      frndRequestId: null == frndRequestId
          ? _value.frndRequestId
          : frndRequestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelFriendRequestImpl implements _CancelFriendRequest {
  const _$CancelFriendRequestImpl({required this.frndRequestId});

  @override
  final String frndRequestId;

  @override
  String toString() {
    return 'AddFriendEvent.cancelFriendRequest(frndRequestId: $frndRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelFriendRequestImpl &&
            (identical(other.frndRequestId, frndRequestId) ||
                other.frndRequestId == frndRequestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frndRequestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelFriendRequestImplCopyWith<_$CancelFriendRequestImpl> get copyWith =>
      __$$CancelFriendRequestImplCopyWithImpl<_$CancelFriendRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String frndRequestId, String userId, String userName)
        acceptFriendRequest,
    required TResult Function(String status, String toId) addFriendEvent,
    required TResult Function(String frndRequestId) cancelFriendRequest,
    required TResult Function() started,
  }) {
    return cancelFriendRequest(frndRequestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult? Function(String status, String toId)? addFriendEvent,
    TResult? Function(String frndRequestId)? cancelFriendRequest,
    TResult? Function()? started,
  }) {
    return cancelFriendRequest?.call(frndRequestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult Function(String status, String toId)? addFriendEvent,
    TResult Function(String frndRequestId)? cancelFriendRequest,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (cancelFriendRequest != null) {
      return cancelFriendRequest(frndRequestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptFriendRequest value) acceptFriendRequest,
    required TResult Function(_AddFriendEvent value) addFriendEvent,
    required TResult Function(_CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(_Started value) started,
  }) {
    return cancelFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult? Function(_AddFriendEvent value)? addFriendEvent,
    TResult? Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(_Started value)? started,
  }) {
    return cancelFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult Function(_AddFriendEvent value)? addFriendEvent,
    TResult Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (cancelFriendRequest != null) {
      return cancelFriendRequest(this);
    }
    return orElse();
  }
}

abstract class _CancelFriendRequest implements AddFriendEvent {
  const factory _CancelFriendRequest({required final String frndRequestId}) =
      _$CancelFriendRequestImpl;

  String get frndRequestId;
  @JsonKey(ignore: true)
  _$$CancelFriendRequestImplCopyWith<_$CancelFriendRequestImpl> get copyWith =>
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
    extends _$AddFriendEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddFriendEvent.started()';
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
            String frndRequestId, String userId, String userName)
        acceptFriendRequest,
    required TResult Function(String status, String toId) addFriendEvent,
    required TResult Function(String frndRequestId) cancelFriendRequest,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult? Function(String status, String toId)? addFriendEvent,
    TResult? Function(String frndRequestId)? cancelFriendRequest,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String frndRequestId, String userId, String userName)?
        acceptFriendRequest,
    TResult Function(String status, String toId)? addFriendEvent,
    TResult Function(String frndRequestId)? cancelFriendRequest,
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
    required TResult Function(_AcceptFriendRequest value) acceptFriendRequest,
    required TResult Function(_AddFriendEvent value) addFriendEvent,
    required TResult Function(_CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult? Function(_AddFriendEvent value)? addFriendEvent,
    TResult? Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptFriendRequest value)? acceptFriendRequest,
    TResult Function(_AddFriendEvent value)? addFriendEvent,
    TResult Function(_CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddFriendEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$AddFriendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addFriendSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addFriendSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addFriendSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFriendSuccess value) addFriendSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFriendStateCopyWith<$Res> {
  factory $AddFriendStateCopyWith(
          AddFriendState value, $Res Function(AddFriendState) then) =
      _$AddFriendStateCopyWithImpl<$Res, AddFriendState>;
}

/// @nodoc
class _$AddFriendStateCopyWithImpl<$Res, $Val extends AddFriendState>
    implements $AddFriendStateCopyWith<$Res> {
  _$AddFriendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddFriendSuccessImplCopyWith<$Res> {
  factory _$$AddFriendSuccessImplCopyWith(_$AddFriendSuccessImpl value,
          $Res Function(_$AddFriendSuccessImpl) then) =
      __$$AddFriendSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddFriendSuccessImplCopyWithImpl<$Res>
    extends _$AddFriendStateCopyWithImpl<$Res, _$AddFriendSuccessImpl>
    implements _$$AddFriendSuccessImplCopyWith<$Res> {
  __$$AddFriendSuccessImplCopyWithImpl(_$AddFriendSuccessImpl _value,
      $Res Function(_$AddFriendSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddFriendSuccessImpl implements _AddFriendSuccess {
  const _$AddFriendSuccessImpl();

  @override
  String toString() {
    return 'AddFriendState.addFriendSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddFriendSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addFriendSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return addFriendSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addFriendSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return addFriendSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addFriendSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (addFriendSuccess != null) {
      return addFriendSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFriendSuccess value) addFriendSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return addFriendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return addFriendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (addFriendSuccess != null) {
      return addFriendSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddFriendSuccess implements AddFriendState {
  const factory _AddFriendSuccess() = _$AddFriendSuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AddFriendStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AddFriendState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addFriendSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addFriendSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addFriendSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFriendSuccess value) addFriendSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddFriendState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddFriendStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AddFriendState.initial()';
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
    required TResult Function() addFriendSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addFriendSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addFriendSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_AddFriendSuccess value) addFriendSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddFriendState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AddFriendStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AddFriendState.loading()';
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
    required TResult Function() addFriendSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addFriendSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addFriendSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_AddFriendSuccess value) addFriendSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFriendSuccess value)? addFriendSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddFriendState {
  const factory _Loading() = _$LoadingImpl;
}
