// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/change_notifier/utility_changenotifier.dart';
import 'package:portfolio_flutter/bloc/auth/auth_bloc.dart';
import 'package:portfolio_flutter/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:portfolio_flutter/bloc/dialog/dialog_bloc.dart';
import 'package:portfolio_flutter/injections.dart';

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
  ChangeNotifierProvider(create: (context) => getIt<ThemeChangeNotifier>()),
  ChangeNotifierProvider(create: (context) => getIt<UtilityChangeNotifier>()),
];
