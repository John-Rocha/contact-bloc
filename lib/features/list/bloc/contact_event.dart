part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.findAll() = _ContactEventFindAll;
  const factory ContactEvent.delete({required Contact contact}) =
      _ContactEventDelete;
}
