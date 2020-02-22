import 'package:baseapp/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:baseapp/bloc/dialog/dialog_bloc.dart';
import 'package:baseapp/ui/common/alert.dart';
import 'package:baseapp/ui/pages/github_trends_bloc_page.dart';
import 'package:baseapp/ui/pages/news_bloc_page.dart';
import 'package:baseapp/ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  final List<Widget> _children = [
    WelcomePage(),
    GitHubTrendsPage(),
    NewsPage(),
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
          return _children[state.pageSelected.index];
        },
      ),
    );
  }
}
