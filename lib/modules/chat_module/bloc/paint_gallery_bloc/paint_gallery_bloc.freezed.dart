// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaintGalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId, String recieverId, String? groupName)
        fetchPaintings,
    required TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)
        selectPainting,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult? Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPaintings value) fetchPaintings,
    required TResult Function(_SelectPainting value) selectPainting,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPaintings value)? fetchPaintings,
    TResult? Function(_SelectPainting value)? selectPainting,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPaintings value)? fetchPaintings,
    TResult Function(_SelectPainting value)? selectPainting,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaintGalleryEventCopyWith<$Res> {
  factory $PaintGalleryEventCopyWith(
          PaintGalleryEvent value, $Res Function(PaintGalleryEvent) then) =
      _$PaintGalleryEventCopyWithImpl<$Res, PaintGalleryEvent>;
}

/// @nodoc
class _$PaintGalleryEventCopyWithImpl<$Res, $Val extends PaintGalleryEvent>
    implements $PaintGalleryEventCopyWith<$Res> {
  _$PaintGalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPaintingsImplCopyWith<$Res> {
  factory _$$FetchPaintingsImplCopyWith(_$FetchPaintingsImpl value,
          $Res Function(_$FetchPaintingsImpl) then) =
      __$$FetchPaintingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, String recieverId, String? groupName});
}

/// @nodoc
class __$$FetchPaintingsImplCopyWithImpl<$Res>
    extends _$PaintGalleryEventCopyWithImpl<$Res, _$FetchPaintingsImpl>
    implements _$$FetchPaintingsImplCopyWith<$Res> {
  __$$FetchPaintingsImplCopyWithImpl(
      _$FetchPaintingsImpl _value, $Res Function(_$FetchPaintingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? recieverId = null,
    Object? groupName = freezed,
  }) {
    return _then(_$FetchPaintingsImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      recieverId: null == recieverId
          ? _value.recieverId
          : recieverId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchPaintingsImpl implements _FetchPaintings {
  const _$FetchPaintingsImpl(
      {required this.chatId, required this.recieverId, this.groupName});

  @override
  final String chatId;
  @override
  final String recieverId;
  @override
  final String? groupName;

  @override
  String toString() {
    return 'PaintGalleryEvent.fetchPaintings(chatId: $chatId, recieverId: $recieverId, groupName: $groupName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaintingsImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.recieverId, recieverId) ||
                other.recieverId == recieverId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, recieverId, groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaintingsImplCopyWith<_$FetchPaintingsImpl> get copyWith =>
      __$$FetchPaintingsImplCopyWithImpl<_$FetchPaintingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId, String recieverId, String? groupName)
        fetchPaintings,
    required TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)
        selectPainting,
    required TResult Function() started,
  }) {
    return fetchPaintings(chatId, recieverId, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult? Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult? Function()? started,
  }) {
    return fetchPaintings?.call(chatId, recieverId, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchPaintings != null) {
      return fetchPaintings(chatId, recieverId, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPaintings value) fetchPaintings,
    required TResult Function(_SelectPainting value) selectPainting,
    required TResult Function(_Started value) started,
  }) {
    return fetchPaintings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPaintings value)? fetchPaintings,
    TResult? Function(_SelectPainting value)? selectPainting,
    TResult? Function(_Started value)? started,
  }) {
    return fetchPaintings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPaintings value)? fetchPaintings,
    TResult Function(_SelectPainting value)? selectPainting,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchPaintings != null) {
      return fetchPaintings(this);
    }
    return orElse();
  }
}

abstract class _FetchPaintings implements PaintGalleryEvent {
  const factory _FetchPaintings(
      {required final String chatId,
      required final String recieverId,
      final String? groupName}) = _$FetchPaintingsImpl;

  String get chatId;
  String get recieverId;
  String? get groupName;
  @JsonKey(ignore: true)
  _$$FetchPaintingsImplCopyWith<_$FetchPaintingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaintingImplCopyWith<$Res> {
  factory _$$SelectPaintingImplCopyWith(_$SelectPaintingImpl value,
          $Res Function(_$SelectPaintingImpl) then) =
      __$$SelectPaintingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PaintDetails> paintingsList,
      List<int> selectedIndexes,
      int selectedIndex,
      String chatId,
      String recieverId,
      String? groupName});
}

/// @nodoc
class __$$SelectPaintingImplCopyWithImpl<$Res>
    extends _$PaintGalleryEventCopyWithImpl<$Res, _$SelectPaintingImpl>
    implements _$$SelectPaintingImplCopyWith<$Res> {
  __$$SelectPaintingImplCopyWithImpl(
      _$SelectPaintingImpl _value, $Res Function(_$SelectPaintingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paintingsList = null,
    Object? selectedIndexes = null,
    Object? selectedIndex = null,
    Object? chatId = null,
    Object? recieverId = null,
    Object? groupName = freezed,
  }) {
    return _then(_$SelectPaintingImpl(
      paintingsList: null == paintingsList
          ? _value._paintingsList
          : paintingsList // ignore: cast_nullable_to_non_nullable
              as List<PaintDetails>,
      selectedIndexes: null == selectedIndexes
          ? _value._selectedIndexes
          : selectedIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      recieverId: null == recieverId
          ? _value.recieverId
          : recieverId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectPaintingImpl implements _SelectPainting {
  const _$SelectPaintingImpl(
      {required final List<PaintDetails> paintingsList,
      required final List<int> selectedIndexes,
      required this.selectedIndex,
      required this.chatId,
      required this.recieverId,
      this.groupName})
      : _paintingsList = paintingsList,
        _selectedIndexes = selectedIndexes;

  final List<PaintDetails> _paintingsList;
  @override
  List<PaintDetails> get paintingsList {
    if (_paintingsList is EqualUnmodifiableListView) return _paintingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paintingsList);
  }

  final List<int> _selectedIndexes;
  @override
  List<int> get selectedIndexes {
    if (_selectedIndexes is EqualUnmodifiableListView) return _selectedIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIndexes);
  }

  @override
  final int selectedIndex;
  @override
  final String chatId;
  @override
  final String recieverId;
  @override
  final String? groupName;

  @override
  String toString() {
    return 'PaintGalleryEvent.selectPainting(paintingsList: $paintingsList, selectedIndexes: $selectedIndexes, selectedIndex: $selectedIndex, chatId: $chatId, recieverId: $recieverId, groupName: $groupName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaintingImpl &&
            const DeepCollectionEquality()
                .equals(other._paintingsList, _paintingsList) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndexes, _selectedIndexes) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.recieverId, recieverId) ||
                other.recieverId == recieverId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paintingsList),
      const DeepCollectionEquality().hash(_selectedIndexes),
      selectedIndex,
      chatId,
      recieverId,
      groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaintingImplCopyWith<_$SelectPaintingImpl> get copyWith =>
      __$$SelectPaintingImplCopyWithImpl<_$SelectPaintingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId, String recieverId, String? groupName)
        fetchPaintings,
    required TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)
        selectPainting,
    required TResult Function() started,
  }) {
    return selectPainting(paintingsList, selectedIndexes, selectedIndex, chatId,
        recieverId, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult? Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult? Function()? started,
  }) {
    return selectPainting?.call(paintingsList, selectedIndexes, selectedIndex,
        chatId, recieverId, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (selectPainting != null) {
      return selectPainting(paintingsList, selectedIndexes, selectedIndex,
          chatId, recieverId, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPaintings value) fetchPaintings,
    required TResult Function(_SelectPainting value) selectPainting,
    required TResult Function(_Started value) started,
  }) {
    return selectPainting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPaintings value)? fetchPaintings,
    TResult? Function(_SelectPainting value)? selectPainting,
    TResult? Function(_Started value)? started,
  }) {
    return selectPainting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPaintings value)? fetchPaintings,
    TResult Function(_SelectPainting value)? selectPainting,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (selectPainting != null) {
      return selectPainting(this);
    }
    return orElse();
  }
}

abstract class _SelectPainting implements PaintGalleryEvent {
  const factory _SelectPainting(
      {required final List<PaintDetails> paintingsList,
      required final List<int> selectedIndexes,
      required final int selectedIndex,
      required final String chatId,
      required final String recieverId,
      final String? groupName}) = _$SelectPaintingImpl;

  List<PaintDetails> get paintingsList;
  List<int> get selectedIndexes;
  int get selectedIndex;
  String get chatId;
  String get recieverId;
  String? get groupName;
  @JsonKey(ignore: true)
  _$$SelectPaintingImplCopyWith<_$SelectPaintingImpl> get copyWith =>
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
    extends _$PaintGalleryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PaintGalleryEvent.started()';
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
            String chatId, String recieverId, String? groupName)
        fetchPaintings,
    required TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)
        selectPainting,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult? Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId, String recieverId, String? groupName)?
        fetchPaintings,
    TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            int selectedIndex,
            String chatId,
            String recieverId,
            String? groupName)?
        selectPainting,
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
    required TResult Function(_FetchPaintings value) fetchPaintings,
    required TResult Function(_SelectPainting value) selectPainting,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPaintings value)? fetchPaintings,
    TResult? Function(_SelectPainting value)? selectPainting,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPaintings value)? fetchPaintings,
    TResult Function(_SelectPainting value)? selectPainting,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaintGalleryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$PaintGalleryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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
abstract class $PaintGalleryStateCopyWith<$Res> {
  factory $PaintGalleryStateCopyWith(
          PaintGalleryState value, $Res Function(PaintGalleryState) then) =
      _$PaintGalleryStateCopyWithImpl<$Res, PaintGalleryState>;
}

/// @nodoc
class _$PaintGalleryStateCopyWithImpl<$Res, $Val extends PaintGalleryState>
    implements $PaintGalleryStateCopyWith<$Res> {
  _$PaintGalleryStateCopyWithImpl(this._value, this._then);

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
    extends _$PaintGalleryStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'PaintGalleryState.error(errorMsg: $errorMsg)';
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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

abstract class _Error implements PaintGalleryState {
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
    extends _$PaintGalleryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PaintGalleryState.initial()';
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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

abstract class _Initial implements PaintGalleryState {
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
    extends _$PaintGalleryStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'PaintGalleryState.loading()';
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
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

abstract class _Loading implements PaintGalleryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PaintDetails> paintingsList,
      List<int> selectedIndexes,
      String chatId,
      String recieverId,
      String? groupName});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PaintGalleryStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paintingsList = null,
    Object? selectedIndexes = null,
    Object? chatId = null,
    Object? recieverId = null,
    Object? groupName = freezed,
  }) {
    return _then(_$SuccessImpl(
      paintingsList: null == paintingsList
          ? _value._paintingsList
          : paintingsList // ignore: cast_nullable_to_non_nullable
              as List<PaintDetails>,
      selectedIndexes: null == selectedIndexes
          ? _value._selectedIndexes
          : selectedIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      recieverId: null == recieverId
          ? _value.recieverId
          : recieverId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<PaintDetails> paintingsList,
      required final List<int> selectedIndexes,
      required this.chatId,
      required this.recieverId,
      this.groupName})
      : _paintingsList = paintingsList,
        _selectedIndexes = selectedIndexes;

  final List<PaintDetails> _paintingsList;
  @override
  List<PaintDetails> get paintingsList {
    if (_paintingsList is EqualUnmodifiableListView) return _paintingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paintingsList);
  }

  final List<int> _selectedIndexes;
  @override
  List<int> get selectedIndexes {
    if (_selectedIndexes is EqualUnmodifiableListView) return _selectedIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIndexes);
  }

  @override
  final String chatId;
  @override
  final String recieverId;
  @override
  final String? groupName;

  @override
  String toString() {
    return 'PaintGalleryState.success(paintingsList: $paintingsList, selectedIndexes: $selectedIndexes, chatId: $chatId, recieverId: $recieverId, groupName: $groupName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._paintingsList, _paintingsList) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndexes, _selectedIndexes) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.recieverId, recieverId) ||
                other.recieverId == recieverId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paintingsList),
      const DeepCollectionEquality().hash(_selectedIndexes),
      chatId,
      recieverId,
      groupName);

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
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)
        success,
  }) {
    return success(
        paintingsList, selectedIndexes, chatId, recieverId, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
        success,
  }) {
    return success?.call(
        paintingsList, selectedIndexes, chatId, recieverId, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaintDetails> paintingsList,
            List<int> selectedIndexes,
            String chatId,
            String recieverId,
            String? groupName)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          paintingsList, selectedIndexes, chatId, recieverId, groupName);
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

abstract class _Success implements PaintGalleryState {
  const factory _Success(
      {required final List<PaintDetails> paintingsList,
      required final List<int> selectedIndexes,
      required final String chatId,
      required final String recieverId,
      final String? groupName}) = _$SuccessImpl;

  List<PaintDetails> get paintingsList;
  List<int> get selectedIndexes;
  String get chatId;
  String get recieverId;
  String? get groupName;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
