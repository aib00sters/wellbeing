// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_members_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupMembersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, String groupId, String groupType,
            String chatId, String type)
        fetchGroupData,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count, String groupId, String groupType,
            String chatId, String type)?
        fetchGroupData,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, String groupId, String groupType, String chatId,
            String type)?
        fetchGroupData,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGroupData value) fetchGroupData,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroupData value)? fetchGroupData,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroupData value)? fetchGroupData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembersEventCopyWith<$Res> {
  factory $GroupMembersEventCopyWith(
          GroupMembersEvent value, $Res Function(GroupMembersEvent) then) =
      _$GroupMembersEventCopyWithImpl<$Res, GroupMembersEvent>;
}

/// @nodoc
class _$GroupMembersEventCopyWithImpl<$Res, $Val extends GroupMembersEvent>
    implements $GroupMembersEventCopyWith<$Res> {
  _$GroupMembersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchGroupDataImplCopyWith<$Res> {
  factory _$$FetchGroupDataImplCopyWith(_$FetchGroupDataImpl value,
          $Res Function(_$FetchGroupDataImpl) then) =
      __$$FetchGroupDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int count,
      String groupId,
      String groupType,
      String chatId,
      String type});
}

/// @nodoc
class __$$FetchGroupDataImplCopyWithImpl<$Res>
    extends _$GroupMembersEventCopyWithImpl<$Res, _$FetchGroupDataImpl>
    implements _$$FetchGroupDataImplCopyWith<$Res> {
  __$$FetchGroupDataImplCopyWithImpl(
      _$FetchGroupDataImpl _value, $Res Function(_$FetchGroupDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? groupId = null,
    Object? groupType = null,
    Object? chatId = null,
    Object? type = null,
  }) {
    return _then(_$FetchGroupDataImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupType: null == groupType
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchGroupDataImpl implements _FetchGroupData {
  const _$FetchGroupDataImpl(
      {required this.count,
      required this.groupId,
      required this.groupType,
      required this.chatId,
      required this.type});

  @override
  final int count;
  @override
  final String groupId;
  @override
  final String groupType;
  @override
  final String chatId;
  @override
  final String type;

  @override
  String toString() {
    return 'GroupMembersEvent.fetchGroupData(count: $count, groupId: $groupId, groupType: $groupType, chatId: $chatId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchGroupDataImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, count, groupId, groupType, chatId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchGroupDataImplCopyWith<_$FetchGroupDataImpl> get copyWith =>
      __$$FetchGroupDataImplCopyWithImpl<_$FetchGroupDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, String groupId, String groupType,
            String chatId, String type)
        fetchGroupData,
    required TResult Function() started,
  }) {
    return fetchGroupData(count, groupId, groupType, chatId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count, String groupId, String groupType,
            String chatId, String type)?
        fetchGroupData,
    TResult? Function()? started,
  }) {
    return fetchGroupData?.call(count, groupId, groupType, chatId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, String groupId, String groupType, String chatId,
            String type)?
        fetchGroupData,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchGroupData != null) {
      return fetchGroupData(count, groupId, groupType, chatId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGroupData value) fetchGroupData,
    required TResult Function(_Started value) started,
  }) {
    return fetchGroupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroupData value)? fetchGroupData,
    TResult? Function(_Started value)? started,
  }) {
    return fetchGroupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroupData value)? fetchGroupData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchGroupData != null) {
      return fetchGroupData(this);
    }
    return orElse();
  }
}

abstract class _FetchGroupData implements GroupMembersEvent {
  const factory _FetchGroupData(
      {required final int count,
      required final String groupId,
      required final String groupType,
      required final String chatId,
      required final String type}) = _$FetchGroupDataImpl;

  int get count;
  String get groupId;
  String get groupType;
  String get chatId;
  String get type;
  @JsonKey(ignore: true)
  _$$FetchGroupDataImplCopyWith<_$FetchGroupDataImpl> get copyWith =>
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
    extends _$GroupMembersEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'GroupMembersEvent.started()';
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
    required TResult Function(int count, String groupId, String groupType,
            String chatId, String type)
        fetchGroupData,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count, String groupId, String groupType,
            String chatId, String type)?
        fetchGroupData,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, String groupId, String groupType, String chatId,
            String type)?
        fetchGroupData,
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
    required TResult Function(_FetchGroupData value) fetchGroupData,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroupData value)? fetchGroupData,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroupData value)? fetchGroupData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GroupMembersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$GroupMembersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMembersStateCopyWith<$Res> {
  factory $GroupMembersStateCopyWith(
          GroupMembersState value, $Res Function(GroupMembersState) then) =
      _$GroupMembersStateCopyWithImpl<$Res, GroupMembersState>;
}

/// @nodoc
class _$GroupMembersStateCopyWithImpl<$Res, $Val extends GroupMembersState>
    implements $GroupMembersStateCopyWith<$Res> {
  _$GroupMembersStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GroupMembersStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ErrorImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'GroupMembersState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)
        success,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GroupMembersState {
  const factory _Error({required final String errorMsg}) = _$ErrorImpl;

  String get errorMsg;
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
    extends _$GroupMembersStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GroupMembersState.initial()';
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
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GroupMembersState {
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
    extends _$GroupMembersStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'GroupMembersState.loading()';
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
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GroupMembersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int count,
      String groupName,
      String groupId,
      String imageUrl,
      List<UserListItem> groupMembers,
      String groupType,
      String chatId,
      String type});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GroupMembersStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? groupName = null,
    Object? groupId = null,
    Object? imageUrl = null,
    Object? groupMembers = null,
    Object? groupType = null,
    Object? chatId = null,
    Object? type = null,
  }) {
    return _then(_$SuccessImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      groupMembers: null == groupMembers
          ? _value._groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      groupType: null == groupType
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.count,
      required this.groupName,
      required this.groupId,
      required this.imageUrl,
      required final List<UserListItem> groupMembers,
      required this.groupType,
      required this.chatId,
      required this.type})
      : _groupMembers = groupMembers;

  @override
  final int count;
  @override
  final String groupName;
  @override
  final String groupId;
  @override
  final String imageUrl;
  final List<UserListItem> _groupMembers;
  @override
  List<UserListItem> get groupMembers {
    if (_groupMembers is EqualUnmodifiableListView) return _groupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupMembers);
  }

  @override
  final String groupType;
  @override
  final String chatId;
  @override
  final String type;

  @override
  String toString() {
    return 'GroupMembersState.success(count: $count, groupName: $groupName, groupId: $groupId, imageUrl: $imageUrl, groupMembers: $groupMembers, groupType: $groupType, chatId: $chatId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._groupMembers, _groupMembers) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      groupName,
      groupId,
      imageUrl,
      const DeepCollectionEquality().hash(_groupMembers),
      groupType,
      chatId,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)
        success,
  }) {
    return success(count, groupName, groupId, imageUrl, groupMembers, groupType,
        chatId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
  }) {
    return success?.call(count, groupName, groupId, imageUrl, groupMembers,
        groupType, chatId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int count,
            String groupName,
            String groupId,
            String imageUrl,
            List<UserListItem> groupMembers,
            String groupType,
            String chatId,
            String type)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(count, groupName, groupId, imageUrl, groupMembers,
          groupType, chatId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements GroupMembersState {
  const factory _Success(
      {required final int count,
      required final String groupName,
      required final String groupId,
      required final String imageUrl,
      required final List<UserListItem> groupMembers,
      required final String groupType,
      required final String chatId,
      required final String type}) = _$SuccessImpl;

  int get count;
  String get groupName;
  String get groupId;
  String get imageUrl;
  List<UserListItem> get groupMembers;
  String get groupType;
  String get chatId;
  String get type;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
