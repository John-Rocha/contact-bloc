import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_event.dart';
part 'contact_update_state.dart';
part 'contact_update_bloc.freezed.dart';

class ContactUpdateBloc extends Bloc<ContactUpdateEvent, ContactUpdateState> {
  final ContactRepository _contactRepository;

  ContactUpdateBloc({required ContactRepository contactRepository})
      : _contactRepository = contactRepository,
        super(const ContactUpdateState.initial()) {
    on<_Update>(_update);
  }

  FutureOr<void> _update(
    _Update event,
    Emitter<ContactUpdateState> emit,
  ) async {
    try {
      emit(const ContactUpdateState.loading());

      final contact = Contact(
        id: event.id,
        name: event.name,
        email: event.email,
      );

      await Future.delayed(const Duration(seconds: 2));
      await _contactRepository.update(contact);

      emit(const ContactUpdateState.success());
    } catch (e, s) {
      log('Erro ao atualizar o contato', error: e, stackTrace: s);
      emit(
        const ContactUpdateState.error(error: 'Erro ao atualizar o contato'),
      );
    }
  }
}
