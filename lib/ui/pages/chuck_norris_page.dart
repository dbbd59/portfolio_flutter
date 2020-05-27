// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/chuck_norris/chucknorris_bloc.dart';
import 'package:portfolio_flutter/injections.dart';

class ChuckNorrisPage extends StatelessWidget {
  const ChuckNorrisPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChucknorrisBloc>(
      create: (context) => getIt<ChucknorrisBloc>()
        ..add(
          FetchChuckNorrisFact(),
        ),
      child: ChuckNorrisBody(),
    );
  }
}

class ChuckNorrisBody extends StatefulWidget {
  @override
  _ChuckNorrisBodyState createState() => _ChuckNorrisBodyState();
}

class _ChuckNorrisBodyState extends State<ChuckNorrisBody>
    with TickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 3,
  );

  AnimationController _controller;
  @override
  void didChangeDependencies() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<ChucknorrisBloc, ChucknorrisState>(
          builder: (context, state) {
            if (state is ChucknorrisStateLoading) {
              _controller.repeat();
              return Center(
                child: RotationTransition(
                  turns: turnsTween.animate(_controller),
                  child: Container(
                    child: Image.asset(
                      "assets/images/chuck-norris-face.png",
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              );
            }
            if (state is ChucknorrisStateLoaded) {
              _controller.stop();
              return SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<ChucknorrisBloc>(context)
                              .add(FetchChuckNorrisFact());
                        },
                        child: Image.asset("assets/images/chuck-norris.png"),
                      ),
                      Text(
                        state.chuckNorrisFact.value,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
