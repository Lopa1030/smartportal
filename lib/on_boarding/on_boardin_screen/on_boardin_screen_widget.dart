import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'on_boardin_screen_model.dart';
export 'on_boardin_screen_model.dart';

class OnBoardinScreenWidget extends StatefulWidget {
  const OnBoardinScreenWidget({super.key});

  @override
  State<OnBoardinScreenWidget> createState() => _OnBoardinScreenWidgetState();
}

class _OnBoardinScreenWidgetState extends State<OnBoardinScreenWidget> {
  late OnBoardinScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnBoardinScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF321614),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1700332020094.json',
                    width: 150.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Text(
                  'Smart Portal',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('SignUp');
                  },
                  text: 'Get started',
                  options: FFButtonOptions(
                    height: 52.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF95564A),
                    textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Lora',
                          color: const Color(0xFFEEDFD7),
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    hoverElevation: 2.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('LoginPage');
                  },
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Lora',
                          color: const Color(0xFFEEDFD7),
                        ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
