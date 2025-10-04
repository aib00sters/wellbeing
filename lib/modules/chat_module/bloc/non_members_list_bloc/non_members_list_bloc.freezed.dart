// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'non_members_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NonMembersListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserListItem> groupMembers, String keyword)
        fetchUsers,
    required TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)
        searcUsers,
    required TResult Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)
        selectUser,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult? Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult? Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)?
        selectUser,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            UserListItem selectedUser)?
        selectUser,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_SearcUsers value) searcUsers,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_SearcUsers value)? searcUsers,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_SearcUsers value)? searcUsers,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonMembersListEventCopyWith<$Res> {
  factory $NonMembersListEventCopyWith(
          NonMembersListEvent value, $Res Function(NonMembersListEvent) then) =
      _$NonMembersListEventCopyWithImpl<$Res, NonMembersListEvent>;
}

/// @nodoc
class _$NonMembersListEventCopyWithImpl<$Res, $Val extends NonMembersListEvent>
    implements $NonMembersListEventCopyWith<$Res> {
  _$NonMembersListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchUsersImplCopyWith<$Res> {
  factory _$$FetchUsersImplCopyWith(
          _$FetchUsersImpl value, $Res Function(_$FetchUsersImpl) then) =
      __$$FetchUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserListItem> groupMembers, String keyword});
}

/// @nodoc
class __$$FetchUsersImplCopyWithImpl<$Res>
    extends _$NonMembersListEventCopyWithImpl<$Res, _$FetchUsersImpl>
    implements _$$FetchUsersImplCopyWith<$Res> {
  __$$FetchUsersImplCopyWithImpl(
      _$FetchUsersImpl _value, $Res Function(_$FetchUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupMembers = null,
    Object? keyword = null,
  }) {
    return _then(_$FetchUsersImpl(
      groupMembers: null == groupMembers
          ? _value._groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchUsersImpl implements _FetchUsers {
  const _$FetchUsersImpl(
      {required final List<UserListItem> groupMembers, required this.keyword})
      : _groupMembers = groupMembers;

  final List<UserListItem> _groupMembers;
  @override
  List<UserListItem> get groupMembers {
    if (_groupMembers is EqualUnmodifiableListView) return _groupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupMembers);
  }

  @override
  final String keyword;

  @override
  String toString() {
    return 'NonMembersListEvent.fetchUsers(groupMembers: $groupMembers, keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUsersImpl &&
            const DeepCollectionEquality()
                .equals(other._groupMembers, _groupMembers) &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groupMembers), keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUsersImplCopyWith<_$FetchUsersImpl> get copyWith =>
      __$$FetchUsersImplCopyWithImpl<_$FetchUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserListItem> groupMembers, String keyword)
        fetchUsers,
    required TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)
        searcUsers,
    required TResult Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)
        selectUser,
    required TResult Function() started,
  }) {
    return fetchUsers(groupMembers, keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult? Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult? Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)?
        selectUser,
    TResult? Function()? started,
  }) {
    return fetchUsers?.call(groupMembers, keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            UserListItem selectedUser)?
        selectUser,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(groupMembers, keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_SearcUsers value) searcUsers,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_Started value) started,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_SearcUsers value)? searcUsers,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_Started value)? started,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_SearcUsers value)? searcUsers,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchUsers implements NonMembersListEvent {
  const factory _FetchUsers(
      {required final List<UserListItem> groupMembers,
      required final String keyword}) = _$FetchUsersImpl;

  List<UserListItem> get groupMembers;
  String get keyword;
  @JsonKey(ignore: true)
  _$$FetchUsersImplCopyWith<_$FetchUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearcUsersImplCopyWith<$Res> {
  factory _$$SearcUsersImplCopyWith(
          _$SearcUsersImpl value, $Res Function(_$SearcUsersImpl) then) =
      __$$SearcUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String keyWord,
      List<UserListItem> userList,
      List<UserListItem> filteredUserList});
}

/// @nodoc
class __$$SearcUsersImplCopyWithImpl<$Res>
    extends _$NonMembersListEventCopyWithImpl<$Res, _$SearcUsersImpl>
    implements _$$SearcUsersImplCopyWith<$Res> {
  __$$SearcUsersImplCopyWithImpl(
      _$SearcUsersImpl _value, $Res Function(_$SearcUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyWord = null,
    Object? userList = null,
    Object? filteredUserList = null,
  }) {
    return _then(_$SearcUsersImpl(
      keyWord: null == keyWord
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String,
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      filteredUserList: null == filteredUserList
          ? _value._filteredUserList
          : filteredUserList // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
    ));
  }
}

/// @nodoc

class _$SearcUsersImpl implements _SearcUsers {
  const _$SearcUsersImpl(
      {required this.keyWord,
      required final List<UserListItem> userList,
      required final List<UserListItem> filteredUserList})
      : _userList = userList,
        _filteredUserList = filteredUserList;

  @override
  final String keyWord;
  final List<UserListItem> _userList;
  @override
  List<UserListItem> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  final List<UserListItem> _filteredUserList;
  @override
  List<UserListItem> get filteredUserList {
    if (_filteredUserList is EqualUnmodifiableListView)
      return _filteredUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredUserList);
  }

  @override
  String toString() {
    return 'NonMembersListEvent.searcUsers(keyWord: $keyWord, userList: $userList, filteredUserList: $filteredUserList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearcUsersImpl &&
            (identical(other.keyWord, keyWord) || other.keyWord == keyWord) &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            const DeepCollectionEquality()
                .equals(other._filteredUserList, _filteredUserList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      keyWord,
      const DeepCollectionEquality().hash(_userList),
      const DeepCollectionEquality().hash(_filteredUserList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearcUsersImplCopyWith<_$SearcUsersImpl> get copyWith =>
      __$$SearcUsersImplCopyWithImpl<_$SearcUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserListItem> groupMembers, String keyword)
        fetchUsers,
    required TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)
        searcUsers,
    required TResult Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)
        selectUser,
    required TResult Function() started,
  }) {
    return searcUsers(keyWord, userList, filteredUserList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult? Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult? Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)?
        selectUser,
    TResult? Function()? started,
  }) {
    return searcUsers?.call(keyWord, userList, filteredUserList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            UserListItem selectedUser)?
        selectUser,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (searcUsers != null) {
      return searcUsers(keyWord, userList, filteredUserList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_SearcUsers value) searcUsers,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_Started value) started,
  }) {
    return searcUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_SearcUsers value)? searcUsers,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_Started value)? started,
  }) {
    return searcUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_SearcUsers value)? searcUsers,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (searcUsers != null) {
      return searcUsers(this);
    }
    return orElse();
  }
}

abstract class _SearcUsers implements NonMembersListEvent {
  const factory _SearcUsers(
      {required final String keyWord,
      required final List<UserListItem> userList,
      required final List<UserListItem> filteredUserList}) = _$SearcUsersImpl;

  String get keyWord;
  List<UserListItem> get userList;
  List<UserListItem> get filteredUserList;
  @JsonKey(ignore: true)
  _$$SearcUsersImplCopyWith<_$SearcUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectUserImplCopyWith<$Res> {
  factory _$$SelectUserImplCopyWith(
          _$SelectUserImpl value, $Res Function(_$SelectUserImpl) then) =
      __$$SelectUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<UserListItem> users,
      List<UserListItem> selectedUsers,
      UserListItem selectedUser});

  $UserListItemCopyWith<$Res> get selectedUser;
}

/// @nodoc
class __$$SelectUserImplCopyWithImpl<$Res>
    extends _$NonMembersListEventCopyWithImpl<$Res, _$SelectUserImpl>
    implements _$$SelectUserImplCopyWith<$Res> {
  __$$SelectUserImplCopyWithImpl(
      _$SelectUserImpl _value, $Res Function(_$SelectUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? selectedUsers = null,
    Object? selectedUser = null,
  }) {
    return _then(_$SelectUserImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      selectedUsers: null == selectedUsers
          ? _value._selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      selectedUser: null == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as UserListItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserListItemCopyWith<$Res> get selectedUser {
    return $UserListItemCopyWith<$Res>(_value.selectedUser, (value) {
      return _then(_value.copyWith(selectedUser: value));
    });
  }
}

/// @nodoc

class _$SelectUserImpl implements _SelectUser {
  const _$SelectUserImpl(
      {required final List<UserListItem> users,
      required final List<UserListItem> selectedUsers,
      required this.selectedUser})
      : _users = users,
        _selectedUsers = selectedUsers;

  final List<UserListItem> _users;
  @override
  List<UserListItem> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<UserListItem> _selectedUsers;
  @override
  List<UserListItem> get selectedUsers {
    if (_selectedUsers is EqualUnmodifiableListView) return _selectedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsers);
  }

  @override
  final UserListItem selectedUser;

  @override
  String toString() {
    return 'NonMembersListEvent.selectUser(users: $users, selectedUsers: $selectedUsers, selectedUser: $selectedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectUserImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._selectedUsers, _selectedUsers) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_selectedUsers),
      selectedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectUserImplCopyWith<_$SelectUserImpl> get copyWith =>
      __$$SelectUserImplCopyWithImpl<_$SelectUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserListItem> groupMembers, String keyword)
        fetchUsers,
    required TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)
        searcUsers,
    required TResult Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)
        selectUser,
    required TResult Function() started,
  }) {
    return selectUser(users, selectedUsers, selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult? Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult? Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)?
        selectUser,
    TResult? Function()? started,
  }) {
    return selectUser?.call(users, selectedUsers, selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            UserListItem selectedUser)?
        selectUser,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(users, selectedUsers, selectedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_SearcUsers value) searcUsers,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_Started value) started,
  }) {
    return selectUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_SearcUsers value)? searcUsers,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_Started value)? started,
  }) {
    return selectUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_SearcUsers value)? searcUsers,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(this);
    }
    return orElse();
  }
}

abstract class _SelectUser implements NonMembersListEvent {
  const factory _SelectUser(
      {required final List<UserListItem> users,
      required final List<UserListItem> selectedUsers,
      required final UserListItem selectedUser}) = _$SelectUserImpl;

  List<UserListItem> get users;
  List<UserListItem> get selectedUsers;
  UserListItem get selectedUser;
  @JsonKey(ignore: true)
  _$$SelectUserImplCopyWith<_$SelectUserImpl> get copyWith =>
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
    extends _$NonMembersListEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'NonMembersListEvent.started()';
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
    required TResult Function(List<UserListItem> groupMembers, String keyword)
        fetchUsers,
    required TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)
        searcUsers,
    required TResult Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)
        selectUser,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult? Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult? Function(List<UserListItem> users,
            List<UserListItem> selectedUsers, UserListItem selectedUser)?
        selectUser,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserListItem> groupMembers, String keyword)?
        fetchUsers,
    TResult Function(String keyWord, List<UserListItem> userList,
            List<UserListItem> filteredUserList)?
        searcUsers,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            UserListItem selectedUser)?
        selectUser,
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
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_SearcUsers value) searcUsers,
    required TResult Function(_SelectUser value) selectUser,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_SearcUsers value)? searcUsers,
    TResult? Function(_SelectUser value)? selectUser,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_SearcUsers value)? searcUsers,
    TResult Function(_SelectUser value)? selectUser,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NonMembersListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$NonMembersListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)
        succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonMembersListStateCopyWith<$Res> {
  factory $NonMembersListStateCopyWith(
          NonMembersListState value, $Res Function(NonMembersListState) then) =
      _$NonMembersListStateCopyWithImpl<$Res, NonMembersListState>;
}

/// @nodoc
class _$NonMembersListStateCopyWithImpl<$Res, $Val extends NonMembersListState>
    implements $NonMembersListStateCopyWith<$Res> {
  _$NonMembersListStateCopyWithImpl(this._value, this._then);

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
    extends _$NonMembersListStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'NonMembersListState.error(errorMsg: $errorMsg)';
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
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)
        succes,
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
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
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
    required TResult Function(_Succes value) succes,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NonMembersListState {
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
    extends _$NonMembersListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NonMembersListState.initial()';
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
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)
        succes,
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
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
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
    required TResult Function(_Succes value) succes,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NonMembersListState {
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
    extends _$NonMembersListStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'NonMembersListState.loading()';
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
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)
        succes,
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
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
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
    required TResult Function(_Succes value) succes,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NonMembersListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccesImplCopyWith<$Res> {
  factory _$$SuccesImplCopyWith(
          _$SuccesImpl value, $Res Function(_$SuccesImpl) then) =
      __$$SuccesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<UserListItem> users,
      List<UserListItem> selectedUsers,
      List<UserListItem> filteredUserList});
}

/// @nodoc
class __$$SuccesImplCopyWithImpl<$Res>
    extends _$NonMembersListStateCopyWithImpl<$Res, _$SuccesImpl>
    implements _$$SuccesImplCopyWith<$Res> {
  __$$SuccesImplCopyWithImpl(
      _$SuccesImpl _value, $Res Function(_$SuccesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? selectedUsers = null,
    Object? filteredUserList = null,
  }) {
    return _then(_$SuccesImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      selectedUsers: null == selectedUsers
          ? _value._selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
      filteredUserList: null == filteredUserList
          ? _value._filteredUserList
          : filteredUserList // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>,
    ));
  }
}

/// @nodoc

class _$SuccesImpl implements _Succes {
  const _$SuccesImpl(
      {required final List<UserListItem> users,
      required final List<UserListItem> selectedUsers,
      required final List<UserListItem> filteredUserList})
      : _users = users,
        _selectedUsers = selectedUsers,
        _filteredUserList = filteredUserList;

  final List<UserListItem> _users;
  @override
  List<UserListItem> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<UserListItem> _selectedUsers;
  @override
  List<UserListItem> get selectedUsers {
    if (_selectedUsers is EqualUnmodifiableListView) return _selectedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsers);
  }

  final List<UserListItem> _filteredUserList;
  @override
  List<UserListItem> get filteredUserList {
    if (_filteredUserList is EqualUnmodifiableListView)
      return _filteredUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredUserList);
  }

  @override
  String toString() {
    return 'NonMembersListState.succes(users: $users, selectedUsers: $selectedUsers, filteredUserList: $filteredUserList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccesImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._selectedUsers, _selectedUsers) &&
            const DeepCollectionEquality()
                .equals(other._filteredUserList, _filteredUserList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_selectedUsers),
      const DeepCollectionEquality().hash(_filteredUserList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccesImplCopyWith<_$SuccesImpl> get copyWith =>
      __$$SuccesImplCopyWithImpl<_$SuccesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)
        succes,
  }) {
    return succes(users, selectedUsers, filteredUserList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<UserListItem> users,
            List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
  }) {
    return succes?.call(users, selectedUsers, filteredUserList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserListItem> users, List<UserListItem> selectedUsers,
            List<UserListItem> filteredUserList)?
        succes,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(users, selectedUsers, filteredUserList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _Succes implements NonMembersListState {
  const factory _Succes(
      {required final List<UserListItem> users,
      required final List<UserListItem> selectedUsers,
      required final List<UserListItem> filteredUserList}) = _$SuccesImpl;

  List<UserListItem> get users;
  List<UserListItem> get selectedUsers;
  List<UserListItem> get filteredUserList;
  @JsonKey(ignore: true)
  _$$SuccesImplCopyWith<_$SuccesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
