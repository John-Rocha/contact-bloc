part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = _ContactStateInitial;
  const factory ContactState.loading() = _ContactStateLoading;
  const factory ContactState.data({required List<Contact> contacts}) =
      _ContactStateData;
  const factory ContactState.error({required String message}) =
      _ContactStateError;
}
