import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'addnote_cubit.dart';

class AddnoteArguments {
  String param;

  AddnoteArguments({
    required this.param,
  });
}

class AddnotePage extends StatelessWidget {
  final AddnoteArguments arguments;

  const AddnotePage({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return AddnoteCubit();
      },
      child: const AddnoteChildPage(),
    );
  }
}

class AddnoteChildPage extends StatefulWidget {
  const AddnoteChildPage({Key? key}) : super(key: key);

  @override
  State<AddnoteChildPage> createState() => _AddnoteChildPageState();
}

class _AddnoteChildPageState extends State<AddnoteChildPage> {
  late final AddnoteCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of(context);
    _cubit.loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
       body: SafeArea(
         child: _buildBodyWidget(),
       ),
     );
  }

  Widget _buildBodyWidget() {
    return Container();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
}
