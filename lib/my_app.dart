import 'package:flutter/material.dart';
import 'package:flutter_application_1/Presentation/bloc/application/application_bloc.dart';
import 'package:flutter_application_1/Presentation/bloc/application/application_event.dart';
import 'package:flutter_application_1/Presentation/bloc/application/application_state.dart';
import 'package:flutter_application_1/Presentation/screens/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ApplicationBloc _appBloc;

  @override
  void initState() {
    _appBloc = ApplicationBloc(ApplicationState.inicializando());
    _appBloc.add(ApplicationStartEvent(context: context));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApplicationBloc>(
      create: (context) => _appBloc,
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        title: 'Meu app',
        home: BlocBuilder<ApplicationBloc, ApplicationState>(
          builder: (context, state) {
            if (state.isAutenticado) {
              return Container();
            }
            return LoginScreen();
          },
        ),
      ),
    );
  }
}
