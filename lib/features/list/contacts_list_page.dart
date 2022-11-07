import 'package:contact_bloc/features/list/bloc/contact_bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/widget/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListPage extends StatefulWidget {
  const ContactsListPage({Key? key}) : super(key: key);

  @override
  State<ContactsListPage> createState() => _ContactsListPageState();
}

class _ContactsListPageState extends State<ContactsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: BlocListener<ContactBloc, ContactState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            error: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            error: (message) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      message,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
            },
          );
        },
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: RefreshIndicator(
                onRefresh: () async => context.read<ContactBloc>()
                  ..add(
                    const ContactEvent.findAll(),
                  ),
                child: Column(
                  children: [
                    Loader<ContactBloc, ContactState>(
                      selector: (state) {
                        return state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        );
                      },
                    ),
                    BlocSelector<ContactBloc, ContactState, List<Contact>>(
                      selector: (state) {
                        return state.maybeWhen(
                          data: (contacts) => contacts,
                          orElse: () => <Contact>[],
                        );
                      },
                      builder: (_, contacts) {
                        return Expanded(
                          child: SizedBox(
                            height: double.infinity,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: contacts.length,
                              itemBuilder: (context, index) {
                                final contact = contacts[index];
                                return ListTile(
                                  title: Text(contact.name),
                                  subtitle: Text(contact.email),
                                  onLongPress: () =>
                                      _showDeleteModal(context, contact),
                                  onTap: () async {
                                    await Navigator.of(context).pushNamed(
                                      '/contact/update',
                                      arguments: contact,
                                    );

                                    if (mounted) {
                                      context
                                          .read<ContactBloc>()
                                          .add(const ContactEvent.findAll());
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/contact/register');
          if (mounted) {
            context.read<ContactBloc>().add(const ContactEvent.findAll());
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteModal(BuildContext context, Contact contact) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Aviso'),
          content: const Text('Deseja deletar esse contato?'),
          actions: [
            TextButton(
              onPressed: () {
                context.read<ContactBloc>().add(
                      ContactEvent.delete(contact: contact),
                    );
                Navigator.of(context).pop();
              },
              child: const Text('Sim'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Não'),
            ),
          ],
        );
      },
    );
  }
}
