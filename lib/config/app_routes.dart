import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/list/bloc/contact_bloc.dart';
import '../features/list/contacts_list_page.dart';
import '../features/register/bloc/contact_register_bloc.dart';
import '../features/register/contact_register_page.dart';
import '../features/update/bloc/contact_update_bloc.dart';
import '../features/update/contact_update_page.dart';
import '../main.dart';
import '../models/contact.dart';
import '../repositories/contact_repository.dart';

class AppRoutes {
  Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const HomePage(),
      '/contacts_list': (context) => BlocProvider(
            create: (context) => ContactBloc(
              repository: context.read<ContactRepository>(),
            )..add(
                const ContactEvent.findAll(),
              ),
            child: const ContactsListPage(),
          ),
      '/contact/register': (context) => BlocProvider(
            create: (context) => ContactRegisterBloc(
              contactRepository: context.read(),
            ),
            child: const ContactRegisterPage(),
          ),
      '/contact/update': (context) {
        final contact = ModalRoute.of(context)!.settings.arguments as Contact;
        return BlocProvider(
          create: (context) => ContactUpdateBloc(
            contactRepository: context.read(),
          ),
          child: ContactUpdatePage(contact: contact),
        );
      },
    };
  }
}
