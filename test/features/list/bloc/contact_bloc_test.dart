import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/list/bloc/contact_bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/scaffolding.dart';

class MockContactsRepository extends Mock implements ContactRepository {}

void main() {
  // Declaração
  late ContactRepository repository;
  late ContactBloc bloc;
  late List<Contact> contacts;
  late Contact contact;

  // Preparação
  setUp(() {
    repository = MockContactsRepository();
    bloc = ContactBloc(repository: repository);
    contacts = [
      Contact(name: 'John', email: 'john@email.com'),
      Contact(name: 'Verna', email: 'verna@email.com'),
    ];
    contact = Contact(name: 'John', email: 'john@email.com');
  });

  // Execução
  blocTest<ContactBloc, ContactState>(
    'Should search the contacts',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactEvent.findAll()),
    setUp: () {
      when(
        () => repository.findAll(),
      ).thenAnswer((_) async => contacts);
    },
    expect: () => [
      const ContactState.loading(),
      ContactState.data(contacts: contacts),
    ],
  );

  blocTest<ContactBloc, ContactState>(
    'Should return a error',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactEvent.findAll()),
    expect: () => [
      const ContactState.loading(),
      const ContactState.error(message: 'Erro ao buscar contatos'),
    ],
  );

  // blocTest<ContactBloc, ContactState>(
  //   'Should return success for contact delete',
  //   build: () => bloc,
  //   act: (bloc) => bloc.add(ContactEvent.delete(contact: contact)),
  //   setUp: () {
  //     when(
  //       () => repository.delete(contact),
  //     ).thenAnswer((_) async => contact);
  //   },
  //   expect: () => [
  //     const ContactState.loading(),
  //   ],
  // );

  blocTest<ContactBloc, ContactState>(
    'Should return error for contact delete',
    build: () => bloc,
    act: (bloc) => bloc.add(ContactEvent.delete(
      contact: Contact(name: 'John', email: 'john@email.com'),
    )),
    expect: () => [
      const ContactState.loading(),
      const ContactState.error(message: 'Erro ao deletar o contato'),
    ],
  );
}
