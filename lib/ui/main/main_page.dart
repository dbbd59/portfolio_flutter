// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:portfolio_flutter/bloc/dialog/dialog_bloc.dart';
import 'package:portfolio_flutter/ui/common/alert.dart';
import 'package:portfolio_flutter/ui/pages/about_me_page.dart';
import 'package:portfolio_flutter/ui/pages/github_trends_bloc_page.dart';
import 'package:portfolio_flutter/ui/pages/news_bloc_page.dart';
import 'package:portfolio_flutter/ui/pages/welcome_page.dart';

class MainPage extends StatelessWidget {
  MainPage({
    Key? key,
  }) : super(key: key);

  final List<Widget> _children = [
    const WelcomePage(),
    const GitHubTrendsPage(),
    const NewsPage(),
    const AboutMePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DialogBloc, DialogState>(
          listener: (context, state) async {
            if (state is DialogStateShow) {
              Alert(
                context: context,
                title: state.title,
                desc: state.message,
                content: state.content,
                buttons: state.listButtons,
              ).show();
            }
          },
        ),
      ],
      child: BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
        builder: (context, state) {
          return _children[state.pageSelected!.index];
        },
      ),
    );
  }
}
