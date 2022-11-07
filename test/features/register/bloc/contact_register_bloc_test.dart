import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/scaffolding.dart';

class MockContactsRepository extends Mock implements ContactRepository {}

void main() {
  // Declaração
  late ContactRepository repository;
  late ContactRegisterBloc bloc;
  late Contact contact;

  // Preparação
  setUp(() {
    repository = MockContactsRepository();
    bloc = ContactRegisterBloc(contactRepository: repository);
    contact = Contact(name: 'John', email: 'john@email.com');
  });

  // Execução
  blocTest<ContactRegisterBloc, ContactRegisterState>(
    'Should create a contact',
    build: () => bloc,
    act: (bloc) => bloc.add(
      const ContactRegisterEvent.save(name: 'John', email: 'john@email.com'),
    ),
    setUp: () {
      when(
        () => repository.create(contact),
      ).thenAnswer(
        (_) async => contact,
      );
    },
    expect: () => [
      const ContactRegisterState.loading(),
      const ContactRegisterState.error(error: 'Erro ao salvar o contato'),
    ],
  );
  blocTest<ContactRegisterBloc, ContactRegisterState>(
    'Should return error for create a contact',
    build: () => bloc,
    act: (bloc) => bloc.add(
      const ContactRegisterEvent.save(name: 'John', email: 'john@email.com'),
    ),
    expect: () => [
      const ContactRegisterState.loading(),
      const ContactRegisterState.error(error: 'Erro ao salvar o contato'),
    ],
  );
}
