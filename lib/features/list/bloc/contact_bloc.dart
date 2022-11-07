import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_event.dart';
part 'contact_state.dart';

part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository _repository;

  ContactBloc({required ContactRepository repository})
      : _repository = repository,
        super(const ContactState.initial()) {
    on<_ContactEventFindAll>(_findAll);
    on<_ContactEventDelete>(_delete);
  }

  FutureOr<void> _findAll(
    _ContactEventFindAll event,
    Emitter<ContactState> emit,
  ) async {
    try {
      emit(const ContactState.loading());
      final contacts = await _repository.findAll();
      // await Future.delayed(const Duration(seconds: 1));
      // throw Exception();
      emit(ContactState.data(contacts: contacts));
    } catch (e, s) {
      log('Erro ao buscar contatos', error: e, stackTrace: s);
      emit(const ContactState.error(message: 'Erro ao buscar contatos'));
    }
  }

  FutureOr<void> _delete(
    _ContactEventDelete event,
    Emitter<ContactState> emit,
  ) async {
    try {
      emit(const ContactState.loading());
      await _repository.delete(event.contact);
      add(const ContactEvent.findAll());
    } catch (e, s) {
      log('Erro ao deletar o contato', error: e, stackTrace: s);
      emit(const ContactState.error(message: 'Erro ao deletar o contato'));
    }
  }
}
