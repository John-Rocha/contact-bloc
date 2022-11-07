import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_event.dart';
part 'contact_register_state.dart';
part 'contact_register_bloc.freezed.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  final ContactRepository _contactRepository;

  ContactRegisterBloc({required ContactRepository contactRepository})
      : _contactRepository = contactRepository,
        super(const ContactRegisterState.initial()) {
    on<_Save>(_save);
  }

  FutureOr<void> _save(
    _Save event,
    Emitter<ContactRegisterState> emit,
  ) async {
    try {
      emit(const ContactRegisterState.loading());

      // await Future.delayed(const Duration(seconds: 2));

      final contactModel = Contact(
        name: event.name,
        email: event.email,
      );
      // throw Exception();
      await _contactRepository.create(contactModel);

      emit(const ContactRegisterState.success());
    } catch (e, s) {
      log('Erro ao salvar o contato', error: e, stackTrace: s);
      emit(const ContactRegisterState.error(error: 'Erro ao salvar o contato'));
    }
  }
}
