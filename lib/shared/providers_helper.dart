import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:baseapp/bloc/dialog/dialog_bloc.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:baseapp/theme/theme_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

var blocProviders = [
  BlocProvider<AuthBloc>(
    create: (context) => getIt<AuthBloc>()
      ..add(
        AuthEventStart(),
      ),
  ),
  BlocProvider<BottomAppBarBloc>(
    create: (context) => getIt<BottomAppBarBloc>(),
  ),
  BlocProvider<DialogBloc>(
    create: (context) => getIt<DialogBloc>(),
  ),
];

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => getIt<ThemeRepository>()),
];
