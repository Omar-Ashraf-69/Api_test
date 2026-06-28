// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUsersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUsersState()';
}


}

/// @nodoc
class $GetUsersStateCopyWith<$Res>  {
$GetUsersStateCopyWith(GetUsersState _, $Res Function(GetUsersState) __);
}


/// Adds pattern-matching-related methods to [GetUsersState].
extension GetUsersStatePatterns on GetUsersState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,TResult Function( _UserLoading value)?  loadingUser,TResult Function( _UserSuccess value)?  userSuccess,TResult Function( _UserError value)?  userError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _UserLoading() when loadingUser != null:
return loadingUser(_that);case _UserSuccess() when userSuccess != null:
return userSuccess(_that);case _UserError() when userError != null:
return userError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,required TResult Function( _UserLoading value)  loadingUser,required TResult Function( _UserSuccess value)  userSuccess,required TResult Function( _UserError value)  userError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _UserLoading():
return loadingUser(_that);case _UserSuccess():
return userSuccess(_that);case _UserError():
return userError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,TResult? Function( _UserLoading value)?  loadingUser,TResult? Function( _UserSuccess value)?  userSuccess,TResult? Function( _UserError value)?  userError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _UserLoading() when loadingUser != null:
return loadingUser(_that);case _UserSuccess() when userSuccess != null:
return userSuccess(_that);case _UserError() when userError != null:
return userError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<UserModel> users)?  success,TResult Function( Failure error)?  error,TResult Function()?  loadingUser,TResult Function( UserModel users)?  userSuccess,TResult Function( Failure error)?  userError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.users);case _Error() when error != null:
return error(_that.error);case _UserLoading() when loadingUser != null:
return loadingUser();case _UserSuccess() when userSuccess != null:
return userSuccess(_that.users);case _UserError() when userError != null:
return userError(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<UserModel> users)  success,required TResult Function( Failure error)  error,required TResult Function()  loadingUser,required TResult Function( UserModel users)  userSuccess,required TResult Function( Failure error)  userError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.users);case _Error():
return error(_that.error);case _UserLoading():
return loadingUser();case _UserSuccess():
return userSuccess(_that.users);case _UserError():
return userError(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<UserModel> users)?  success,TResult? Function( Failure error)?  error,TResult? Function()?  loadingUser,TResult? Function( UserModel users)?  userSuccess,TResult? Function( Failure error)?  userError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.users);case _Error() when error != null:
return error(_that.error);case _UserLoading() when loadingUser != null:
return loadingUser();case _UserSuccess() when userSuccess != null:
return userSuccess(_that.users);case _UserError() when userError != null:
return userError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetUsersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUsersState.initial()';
}


}




/// @nodoc


class _Loading implements GetUsersState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUsersState.loading()';
}


}




/// @nodoc


class _Success implements GetUsersState {
  const _Success(final  List<UserModel> users): _users = users;
  

 final  List<UserModel> _users;
 List<UserModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'GetUsersState.success(users: $users)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $GetUsersStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<UserModel> users
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_Success(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,
  ));
}


}

/// @nodoc


class _Error implements GetUsersState {
  const _Error(this.error);
  

 final  Failure error;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GetUsersState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $GetUsersStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 Failure error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _UserLoading implements GetUsersState {
  const _UserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUsersState.loadingUser()';
}


}




/// @nodoc


class _UserSuccess implements GetUsersState {
  const _UserSuccess(this.users);
  

 final  UserModel users;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSuccessCopyWith<_UserSuccess> get copyWith => __$UserSuccessCopyWithImpl<_UserSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSuccess&&(identical(other.users, users) || other.users == users));
}


@override
int get hashCode => Object.hash(runtimeType,users);

@override
String toString() {
  return 'GetUsersState.userSuccess(users: $users)';
}


}

/// @nodoc
abstract mixin class _$UserSuccessCopyWith<$Res> implements $GetUsersStateCopyWith<$Res> {
  factory _$UserSuccessCopyWith(_UserSuccess value, $Res Function(_UserSuccess) _then) = __$UserSuccessCopyWithImpl;
@useResult
$Res call({
 UserModel users
});




}
/// @nodoc
class __$UserSuccessCopyWithImpl<$Res>
    implements _$UserSuccessCopyWith<$Res> {
  __$UserSuccessCopyWithImpl(this._self, this._then);

  final _UserSuccess _self;
  final $Res Function(_UserSuccess) _then;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_UserSuccess(
null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}


}

/// @nodoc


class _UserError implements GetUsersState {
  const _UserError(this.error);
  

 final  Failure error;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserErrorCopyWith<_UserError> get copyWith => __$UserErrorCopyWithImpl<_UserError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GetUsersState.userError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$UserErrorCopyWith<$Res> implements $GetUsersStateCopyWith<$Res> {
  factory _$UserErrorCopyWith(_UserError value, $Res Function(_UserError) _then) = __$UserErrorCopyWithImpl;
@useResult
$Res call({
 Failure error
});




}
/// @nodoc
class __$UserErrorCopyWithImpl<$Res>
    implements _$UserErrorCopyWith<$Res> {
  __$UserErrorCopyWithImpl(this._self, this._then);

  final _UserError _self;
  final $Res Function(_UserError) _then;

/// Create a copy of GetUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_UserError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
