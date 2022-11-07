import 'package:contact_bloc/models/contact.dart';
import 'package:dio/dio.dart';

class ContactRepository {
  Future<List<Contact>> findAll() async {
    final response = await Dio().get('http://10.0.2.2:3031/contacts');

    return response.data
        ?.map<Contact>((contact) => Contact.fromMap(contact))
        .toList();
  }

  Future<void> create(Contact contact) async =>
      Dio().post('http://10.0.2.2:3031/contacts', data: contact.toMap());

  Future<void> update(Contact contact) async {
    Dio().put(
      'http://10.0.2.2:3031/contacts/${contact.id}',
      data: contact.toMap(),
    );
  }

  Future<void> delete(Contact contact) =>
      Dio().delete('http://10.0.2.2:3031/contacts/${contact.id}');
}
