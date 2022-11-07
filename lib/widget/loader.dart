// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loader<B extends StateStreamable<S>, S> extends StatelessWidget {
  const Loader({
    Key? key,
    required this.selector,
  }) : super(key: key);

  final BlocWidgetSelector<S, bool> selector;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, bool>(
      selector: selector,
      builder: (context, loading) {
        return Visibility(
          visible: loading,
          child: const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
