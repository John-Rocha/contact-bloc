// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(Contact contact) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact contact)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactEventFindAll value) findAll,
    required TResult Function(_ContactEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactEventFindAll value)? findAll,
    TResult Function(_ContactEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactEventFindAll value)? findAll,
    TResult Function(_ContactEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEventCopyWith<$Res> {
  factory $ContactEventCopyWith(
          ContactEvent value, $Res Function(ContactEvent) then) =
      _$ContactEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactEventCopyWithImpl<$Res> implements $ContactEventCopyWith<$Res> {
  _$ContactEventCopyWithImpl(this._value, this._then);

  final ContactEvent _value;
  // ignore: unused_field
  final $Res Function(ContactEvent) _then;
}

/// @nodoc
abstract class _$$_ContactEventFindAllCopyWith<$Res> {
  factory _$$_ContactEventFindAllCopyWith(_$_ContactEventFindAll value,
          $Res Function(_$_ContactEventFindAll) then) =
      __$$_ContactEventFindAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactEventFindAllCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res>
    implements _$$_ContactEventFindAllCopyWith<$Res> {
  __$$_ContactEventFindAllCopyWithImpl(_$_ContactEventFindAll _value,
      $Res Function(_$_ContactEventFindAll) _then)
      : super(_value, (v) => _then(v as _$_ContactEventFindAll));

  @override
  _$_ContactEventFindAll get _value => super._value as _$_ContactEventFindAll;
}

/// @nodoc

class _$_ContactEventFindAll implements _ContactEventFindAll {
  const _$_ContactEventFindAll();

  @override
  String toString() {
    return 'ContactEvent.findAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactEventFindAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(Contact contact) delete,
  }) {
    return findAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact contact)? delete,
  }) {
    return findAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactEventFindAll value) findAll,
    required TResult Function(_ContactEventDelete value) delete,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactEventFindAll value)? findAll,
    TResult Function(_ContactEventDelete value)? delete,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactEventFindAll value)? findAll,
    TResult Function(_ContactEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _ContactEventFindAll implements ContactEvent {
  const factory _ContactEventFindAll() = _$_ContactEventFindAll;
}

/// @nodoc
abstract class _$$_ContactEventDeleteCopyWith<$Res> {
  factory _$$_ContactEventDeleteCopyWith(_$_ContactEventDelete value,
          $Res Function(_$_ContactEventDelete) then) =
      __$$_ContactEventDeleteCopyWithImpl<$Res>;
  $Res call({Contact contact});
}

/// @nodoc
class __$$_ContactEventDeleteCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res>
    implements _$$_ContactEventDeleteCopyWith<$Res> {
  __$$_ContactEventDeleteCopyWithImpl(
      _$_ContactEventDelete _value, $Res Function(_$_ContactEventDelete) _then)
      : super(_value, (v) => _then(v as _$_ContactEventDelete));

  @override
  _$_ContactEventDelete get _value => super._value as _$_ContactEventDelete;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$_ContactEventDelete(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_ContactEventDelete implements _ContactEventDelete {
  const _$_ContactEventDelete({required this.contact});

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactEvent.delete(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactEventDelete &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  _$$_ContactEventDeleteCopyWith<_$_ContactEventDelete> get copyWith =>
      __$$_ContactEventDeleteCopyWithImpl<_$_ContactEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(Contact contact) delete,
  }) {
    return delete(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact contact)? delete,
  }) {
    return delete?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactEventFindAll value) findAll,
    required TResult Function(_ContactEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactEventFindAll value)? findAll,
    TResult Function(_ContactEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactEventFindAll value)? findAll,
    TResult Function(_ContactEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ContactEventDelete implements ContactEvent {
  const factory _ContactEventDelete({required final Contact contact}) =
      _$_ContactEventDelete;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$_ContactEventDeleteCopyWith<_$_ContactEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateInitial value) initial,
    required TResult Function(_ContactStateLoading value) loading,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res> implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  final ContactState _value;
  // ignore: unused_field
  final $Res Function(ContactState) _then;
}

/// @nodoc
abstract class _$$_ContactStateInitialCopyWith<$Res> {
  factory _$$_ContactStateInitialCopyWith(_$_ContactStateInitial value,
          $Res Function(_$_ContactStateInitial) then) =
      __$$_ContactStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactStateInitialCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res>
    implements _$$_ContactStateInitialCopyWith<$Res> {
  __$$_ContactStateInitialCopyWithImpl(_$_ContactStateInitial _value,
      $Res Function(_$_ContactStateInitial) _then)
      : super(_value, (v) => _then(v as _$_ContactStateInitial));

  @override
  _$_ContactStateInitial get _value => super._value as _$_ContactStateInitial;
}

/// @nodoc

class _$_ContactStateInitial implements _ContactStateInitial {
  const _$_ContactStateInitial();

  @override
  String toString() {
    return 'ContactState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
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
    required TResult Function(_ContactStateInitial value) initial,
    required TResult Function(_ContactStateLoading value) loading,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactStateInitial implements ContactState {
  const factory _ContactStateInitial() = _$_ContactStateInitial;
}

/// @nodoc
abstract class _$$_ContactStateLoadingCopyWith<$Res> {
  factory _$$_ContactStateLoadingCopyWith(_$_ContactStateLoading value,
          $Res Function(_$_ContactStateLoading) then) =
      __$$_ContactStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactStateLoadingCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res>
    implements _$$_ContactStateLoadingCopyWith<$Res> {
  __$$_ContactStateLoadingCopyWithImpl(_$_ContactStateLoading _value,
      $Res Function(_$_ContactStateLoading) _then)
      : super(_value, (v) => _then(v as _$_ContactStateLoading));

  @override
  _$_ContactStateLoading get _value => super._value as _$_ContactStateLoading;
}

/// @nodoc

class _$_ContactStateLoading implements _ContactStateLoading {
  const _$_ContactStateLoading();

  @override
  String toString() {
    return 'ContactState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
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
    required TResult Function(_ContactStateInitial value) initial,
    required TResult Function(_ContactStateLoading value) loading,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactStateLoading implements ContactState {
  const factory _ContactStateLoading() = _$_ContactStateLoading;
}

/// @nodoc
abstract class _$$_ContactStateDataCopyWith<$Res> {
  factory _$$_ContactStateDataCopyWith(
          _$_ContactStateData value, $Res Function(_$_ContactStateData) then) =
      __$$_ContactStateDataCopyWithImpl<$Res>;
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$_ContactStateDataCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res>
    implements _$$_ContactStateDataCopyWith<$Res> {
  __$$_ContactStateDataCopyWithImpl(
      _$_ContactStateData _value, $Res Function(_$_ContactStateData) _then)
      : super(_value, (v) => _then(v as _$_ContactStateData));

  @override
  _$_ContactStateData get _value => super._value as _$_ContactStateData;

  @override
  $Res call({
    Object? contacts = freezed,
  }) {
    return _then(_$_ContactStateData(
      contacts: contacts == freezed
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_ContactStateData implements _ContactStateData {
  const _$_ContactStateData({required final List<Contact> contacts})
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactState.data(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactStateData &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  _$$_ContactStateDataCopyWith<_$_ContactStateData> get copyWith =>
      __$$_ContactStateDataCopyWithImpl<_$_ContactStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String message) error,
  }) {
    return data(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
  }) {
    return data?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateInitial value) initial,
    required TResult Function(_ContactStateLoading value) loading,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ContactStateData implements ContactState {
  const factory _ContactStateData({required final List<Contact> contacts}) =
      _$_ContactStateData;

  List<Contact> get contacts;
  @JsonKey(ignore: true)
  _$$_ContactStateDataCopyWith<_$_ContactStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContactStateErrorCopyWith<$Res> {
  factory _$$_ContactStateErrorCopyWith(_$_ContactStateError value,
          $Res Function(_$_ContactStateError) then) =
      __$$_ContactStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ContactStateErrorCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res>
    implements _$$_ContactStateErrorCopyWith<$Res> {
  __$$_ContactStateErrorCopyWithImpl(
      _$_ContactStateError _value, $Res Function(_$_ContactStateError) _then)
      : super(_value, (v) => _then(v as _$_ContactStateError));

  @override
  _$_ContactStateError get _value => super._value as _$_ContactStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ContactStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactStateError implements _ContactStateError {
  const _$_ContactStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ContactStateErrorCopyWith<_$_ContactStateError> get copyWith =>
      __$$_ContactStateErrorCopyWithImpl<_$_ContactStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateInitial value) initial,
    required TResult Function(_ContactStateLoading value) loading,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateInitial value)? initial,
    TResult Function(_ContactStateLoading value)? loading,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactStateError implements ContactState {
  const factory _ContactStateError({required final String message}) =
      _$_ContactStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_ContactStateErrorCopyWith<_$_ContactStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
