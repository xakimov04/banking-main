// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(CardModel card) addCard,
    required TResult Function(String id) deleteCard,
    required TResult Function(String fromCardID, String toCardId, double amount)
        sendMoney,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCards,
    TResult? Function(CardModel card)? addCard,
    TResult? Function(String id)? deleteCard,
    TResult? Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(CardModel card)? addCard,
    TResult Function(String id)? deleteCard,
    TResult Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_SendMoney value) sendMoney,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_DeleteCard value)? deleteCard,
    TResult? Function(_SendMoney value)? sendMoney,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCards value)? getCards,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_SendMoney value)? sendMoney,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventCopyWith<$Res> {
  factory $CardEventCopyWith(CardEvent value, $Res Function(CardEvent) then) =
      _$CardEventCopyWithImpl<$Res, CardEvent>;
}

/// @nodoc
class _$CardEventCopyWithImpl<$Res, $Val extends CardEvent>
    implements $CardEventCopyWith<$Res> {
  _$CardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCardsImplCopyWith<$Res> {
  factory _$$GetCardsImplCopyWith(
          _$GetCardsImpl value, $Res Function(_$GetCardsImpl) then) =
      __$$GetCardsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCardsImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$GetCardsImpl>
    implements _$$GetCardsImplCopyWith<$Res> {
  __$$GetCardsImplCopyWithImpl(
      _$GetCardsImpl _value, $Res Function(_$GetCardsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCardsImpl implements _GetCards {
  _$GetCardsImpl();

  @override
  String toString() {
    return 'CardEvent.getCards()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCardsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(CardModel card) addCard,
    required TResult Function(String id) deleteCard,
    required TResult Function(String fromCardID, String toCardId, double amount)
        sendMoney,
  }) {
    return getCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCards,
    TResult? Function(CardModel card)? addCard,
    TResult? Function(String id)? deleteCard,
    TResult? Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
  }) {
    return getCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(CardModel card)? addCard,
    TResult Function(String id)? deleteCard,
    TResult Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_SendMoney value) sendMoney,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_DeleteCard value)? deleteCard,
    TResult? Function(_SendMoney value)? sendMoney,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCards value)? getCards,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_SendMoney value)? sendMoney,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class _GetCards implements CardEvent {
  factory _GetCards() = _$GetCardsImpl;
}

/// @nodoc
abstract class _$$AddCardImplCopyWith<$Res> {
  factory _$$AddCardImplCopyWith(
          _$AddCardImpl value, $Res Function(_$AddCardImpl) then) =
      __$$AddCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardModel card});

  $CardModelCopyWith<$Res> get card;
}

/// @nodoc
class __$$AddCardImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$AddCardImpl>
    implements _$$AddCardImplCopyWith<$Res> {
  __$$AddCardImplCopyWithImpl(
      _$AddCardImpl _value, $Res Function(_$AddCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
  }) {
    return _then(_$AddCardImpl(
      null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CardModelCopyWith<$Res> get card {
    return $CardModelCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc

class _$AddCardImpl implements _AddCard {
  _$AddCardImpl(this.card);

  @override
  final CardModel card;

  @override
  String toString() {
    return 'CardEvent.addCard(card: $card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardImpl &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardImplCopyWith<_$AddCardImpl> get copyWith =>
      __$$AddCardImplCopyWithImpl<_$AddCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(CardModel card) addCard,
    required TResult Function(String id) deleteCard,
    required TResult Function(String fromCardID, String toCardId, double amount)
        sendMoney,
  }) {
    return addCard(card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCards,
    TResult? Function(CardModel card)? addCard,
    TResult? Function(String id)? deleteCard,
    TResult? Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
  }) {
    return addCard?.call(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(CardModel card)? addCard,
    TResult Function(String id)? deleteCard,
    TResult Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_SendMoney value) sendMoney,
  }) {
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_DeleteCard value)? deleteCard,
    TResult? Function(_SendMoney value)? sendMoney,
  }) {
    return addCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCards value)? getCards,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_SendMoney value)? sendMoney,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class _AddCard implements CardEvent {
  factory _AddCard(final CardModel card) = _$AddCardImpl;

  CardModel get card;
  @JsonKey(ignore: true)
  _$$AddCardImplCopyWith<_$AddCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCardImplCopyWith<$Res> {
  factory _$$DeleteCardImplCopyWith(
          _$DeleteCardImpl value, $Res Function(_$DeleteCardImpl) then) =
      __$$DeleteCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCardImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$DeleteCardImpl>
    implements _$$DeleteCardImplCopyWith<$Res> {
  __$$DeleteCardImplCopyWithImpl(
      _$DeleteCardImpl _value, $Res Function(_$DeleteCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCardImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCardImpl implements _DeleteCard {
  _$DeleteCardImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CardEvent.deleteCard(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCardImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCardImplCopyWith<_$DeleteCardImpl> get copyWith =>
      __$$DeleteCardImplCopyWithImpl<_$DeleteCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(CardModel card) addCard,
    required TResult Function(String id) deleteCard,
    required TResult Function(String fromCardID, String toCardId, double amount)
        sendMoney,
  }) {
    return deleteCard(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCards,
    TResult? Function(CardModel card)? addCard,
    TResult? Function(String id)? deleteCard,
    TResult? Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
  }) {
    return deleteCard?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(CardModel card)? addCard,
    TResult Function(String id)? deleteCard,
    TResult Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_SendMoney value) sendMoney,
  }) {
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_DeleteCard value)? deleteCard,
    TResult? Function(_SendMoney value)? sendMoney,
  }) {
    return deleteCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCards value)? getCards,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_SendMoney value)? sendMoney,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(this);
    }
    return orElse();
  }
}

abstract class _DeleteCard implements CardEvent {
  factory _DeleteCard(final String id) = _$DeleteCardImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteCardImplCopyWith<_$DeleteCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMoneyImplCopyWith<$Res> {
  factory _$$SendMoneyImplCopyWith(
          _$SendMoneyImpl value, $Res Function(_$SendMoneyImpl) then) =
      __$$SendMoneyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromCardID, String toCardId, double amount});
}

/// @nodoc
class __$$SendMoneyImplCopyWithImpl<$Res>
    extends _$CardEventCopyWithImpl<$Res, _$SendMoneyImpl>
    implements _$$SendMoneyImplCopyWith<$Res> {
  __$$SendMoneyImplCopyWithImpl(
      _$SendMoneyImpl _value, $Res Function(_$SendMoneyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromCardID = null,
    Object? toCardId = null,
    Object? amount = null,
  }) {
    return _then(_$SendMoneyImpl(
      null == fromCardID
          ? _value.fromCardID
          : fromCardID // ignore: cast_nullable_to_non_nullable
              as String,
      null == toCardId
          ? _value.toCardId
          : toCardId // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SendMoneyImpl implements _SendMoney {
  _$SendMoneyImpl(this.fromCardID, this.toCardId, this.amount);

  @override
  final String fromCardID;
  @override
  final String toCardId;
  @override
  final double amount;

  @override
  String toString() {
    return 'CardEvent.sendMoney(fromCardID: $fromCardID, toCardId: $toCardId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMoneyImpl &&
            (identical(other.fromCardID, fromCardID) ||
                other.fromCardID == fromCardID) &&
            (identical(other.toCardId, toCardId) ||
                other.toCardId == toCardId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromCardID, toCardId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMoneyImplCopyWith<_$SendMoneyImpl> get copyWith =>
      __$$SendMoneyImplCopyWithImpl<_$SendMoneyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(CardModel card) addCard,
    required TResult Function(String id) deleteCard,
    required TResult Function(String fromCardID, String toCardId, double amount)
        sendMoney,
  }) {
    return sendMoney(fromCardID, toCardId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCards,
    TResult? Function(CardModel card)? addCard,
    TResult? Function(String id)? deleteCard,
    TResult? Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
  }) {
    return sendMoney?.call(fromCardID, toCardId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(CardModel card)? addCard,
    TResult Function(String id)? deleteCard,
    TResult Function(String fromCardID, String toCardId, double amount)?
        sendMoney,
    required TResult orElse(),
  }) {
    if (sendMoney != null) {
      return sendMoney(fromCardID, toCardId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_SendMoney value) sendMoney,
  }) {
    return sendMoney(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_DeleteCard value)? deleteCard,
    TResult? Function(_SendMoney value)? sendMoney,
  }) {
    return sendMoney?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCards value)? getCards,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_SendMoney value)? sendMoney,
    required TResult orElse(),
  }) {
    if (sendMoney != null) {
      return sendMoney(this);
    }
    return orElse();
  }
}

abstract class _SendMoney implements CardEvent {
  factory _SendMoney(
          final String fromCardID, final String toCardId, final double amount) =
      _$SendMoneyImpl;

  String get fromCardID;
  String get toCardId;
  double get amount;
  @JsonKey(ignore: true)
  _$$SendMoneyImplCopyWith<_$SendMoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CardModel> cards) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CardModel> cards)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CardModel> cards)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardInitialState value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardLoadedState value) loaded,
    required TResult Function(_CardErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardInitialState value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardLoadedState value)? loaded,
    TResult? Function(_CardErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardInitialState value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardLoadedState value)? loaded,
    TResult Function(_CardErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res, CardState>;
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res, $Val extends CardState>
    implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CardInitialStateImplCopyWith<$Res> {
  factory _$$CardInitialStateImplCopyWith(_$CardInitialStateImpl value,
          $Res Function(_$CardInitialStateImpl) then) =
      __$$CardInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardInitialStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardInitialStateImpl>
    implements _$$CardInitialStateImplCopyWith<$Res> {
  __$$CardInitialStateImplCopyWithImpl(_$CardInitialStateImpl _value,
      $Res Function(_$CardInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardInitialStateImpl implements _CardInitialState {
  const _$CardInitialStateImpl();

  @override
  String toString() {
    return 'CardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CardModel> cards) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CardModel> cards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CardModel> cards)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_CardInitialState value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardLoadedState value) loaded,
    required TResult Function(_CardErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardInitialState value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardLoadedState value)? loaded,
    TResult? Function(_CardErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardInitialState value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardLoadedState value)? loaded,
    TResult Function(_CardErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CardInitialState implements CardState {
  const factory _CardInitialState() = _$CardInitialStateImpl;
}

/// @nodoc
abstract class _$$CardLoadingStateImplCopyWith<$Res> {
  factory _$$CardLoadingStateImplCopyWith(_$CardLoadingStateImpl value,
          $Res Function(_$CardLoadingStateImpl) then) =
      __$$CardLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardLoadingStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardLoadingStateImpl>
    implements _$$CardLoadingStateImplCopyWith<$Res> {
  __$$CardLoadingStateImplCopyWithImpl(_$CardLoadingStateImpl _value,
      $Res Function(_$CardLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardLoadingStateImpl implements _CardLoadingState {
  _$CardLoadingStateImpl();

  @override
  String toString() {
    return 'CardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CardModel> cards) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CardModel> cards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CardModel> cards)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_CardInitialState value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardLoadedState value) loaded,
    required TResult Function(_CardErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardInitialState value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardLoadedState value)? loaded,
    TResult? Function(_CardErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardInitialState value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardLoadedState value)? loaded,
    TResult Function(_CardErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CardLoadingState implements CardState {
  factory _CardLoadingState() = _$CardLoadingStateImpl;
}

/// @nodoc
abstract class _$$CardLoadedStateImplCopyWith<$Res> {
  factory _$$CardLoadedStateImplCopyWith(_$CardLoadedStateImpl value,
          $Res Function(_$CardLoadedStateImpl) then) =
      __$$CardLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CardModel> cards});
}

/// @nodoc
class __$$CardLoadedStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardLoadedStateImpl>
    implements _$$CardLoadedStateImplCopyWith<$Res> {
  __$$CardLoadedStateImplCopyWithImpl(
      _$CardLoadedStateImpl _value, $Res Function(_$CardLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$CardLoadedStateImpl(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc

class _$CardLoadedStateImpl implements _CardLoadedState {
  _$CardLoadedStateImpl(final List<CardModel> cards) : _cards = cards;

  final List<CardModel> _cards;
  @override
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CardState.loaded(cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardLoadedStateImplCopyWith<_$CardLoadedStateImpl> get copyWith =>
      __$$CardLoadedStateImplCopyWithImpl<_$CardLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CardModel> cards) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CardModel> cards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CardModel> cards)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardInitialState value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardLoadedState value) loaded,
    required TResult Function(_CardErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardInitialState value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardLoadedState value)? loaded,
    TResult? Function(_CardErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardInitialState value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardLoadedState value)? loaded,
    TResult Function(_CardErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CardLoadedState implements CardState {
  factory _CardLoadedState(final List<CardModel> cards) = _$CardLoadedStateImpl;

  List<CardModel> get cards;
  @JsonKey(ignore: true)
  _$$CardLoadedStateImplCopyWith<_$CardLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardErrorStateImplCopyWith<$Res> {
  factory _$$CardErrorStateImplCopyWith(_$CardErrorStateImpl value,
          $Res Function(_$CardErrorStateImpl) then) =
      __$$CardErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CardErrorStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardErrorStateImpl>
    implements _$$CardErrorStateImplCopyWith<$Res> {
  __$$CardErrorStateImplCopyWithImpl(
      _$CardErrorStateImpl _value, $Res Function(_$CardErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CardErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardErrorStateImpl implements _CardErrorState {
  _$CardErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CardState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardErrorStateImplCopyWith<_$CardErrorStateImpl> get copyWith =>
      __$$CardErrorStateImplCopyWithImpl<_$CardErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CardModel> cards) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CardModel> cards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CardModel> cards)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardInitialState value) initial,
    required TResult Function(_CardLoadingState value) loading,
    required TResult Function(_CardLoadedState value) loaded,
    required TResult Function(_CardErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardInitialState value)? initial,
    TResult? Function(_CardLoadingState value)? loading,
    TResult? Function(_CardLoadedState value)? loaded,
    TResult? Function(_CardErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardInitialState value)? initial,
    TResult Function(_CardLoadingState value)? loading,
    TResult Function(_CardLoadedState value)? loaded,
    TResult Function(_CardErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CardErrorState implements CardState {
  factory _CardErrorState(final String error) = _$CardErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CardErrorStateImplCopyWith<_$CardErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
