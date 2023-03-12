// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  List<User>? get data => throw _privateConstructorUsedError;
  Support? get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<User>? data,
      Support? support});

  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportCopyWith<$Res>? get support {
    if (_value.support == null) {
      return null;
    }

    return $SupportCopyWith<$Res>(_value.support!, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$_UserResponseCopyWith(
          _$_UserResponse value, $Res Function(_$_UserResponse) then) =
      __$$_UserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<User>? data,
      Support? support});

  @override
  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class __$$_UserResponseCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$_UserResponse>
    implements _$$_UserResponseCopyWith<$Res> {
  __$$_UserResponseCopyWithImpl(
      _$_UserResponse _value, $Res Function(_$_UserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_$_UserResponse(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse(
      {this.page,
      @JsonKey(name: 'per_page') this.perPage,
      this.total,
      @JsonKey(name: 'total_pages') this.totalPages,
      final List<User>? data,
      this.support})
      : _data = data;

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Support? support;

  @override
  String toString() {
    return 'UserResponse(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data, support: $support)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponse &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.support, support) || other.support == support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_data), support);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      __$$_UserResponseCopyWithImpl<_$_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      {final int? page,
      @JsonKey(name: 'per_page') final int? perPage,
      final int? total,
      @JsonKey(name: 'total_pages') final int? totalPages,
      final List<User>? data,
      final Support? support}) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  List<User>? get data;
  @override
  Support? get support;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
