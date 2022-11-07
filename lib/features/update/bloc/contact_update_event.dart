part of 'contact_update_bloc.dart';

@freezed
class ContactUpdateEvent with _$ContactUpdateEvent {
  const factory ContactUpdateEvent.update({
    required String id,
    required String name,
    required String email,
  }) = _Update;
}
