import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'input_user_info_model.dart';
export 'input_user_info_model.dart';

class InputUserInfoWidget extends StatefulWidget {
  const InputUserInfoWidget({super.key});

  @override
  State<InputUserInfoWidget> createState() => _InputUserInfoWidgetState();
}

class _InputUserInfoWidgetState extends State<InputUserInfoWidget> {
  late InputUserInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputUserInfoModel());

    _model.usernameController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.dobController ??= TextEditingController();
    _model.dobFocusNode ??= FocusNode();

    _model.addController ??= TextEditingController();
    _model.addFocusNode ??= FocusNode();

    _model.phnnumController ??= TextEditingController();
    _model.phnnumFocusNode ??= FocusNode();

    _model.bgController ??= TextEditingController();
    _model.bgFocusNode ??= FocusNode();

    _model.religionController ??= TextEditingController();
    _model.religionFocusNode ??= FocusNode();

    _model.nidController ??= TextEditingController();
    _model.nidFocusNode ??= FocusNode();

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: const Color(0xFF452D2B),
        automaticallyImplyLeading: false,
        title: Text(
          'Setting Up your Profile',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Lora',
                color: const Color(0xFFEEDFD7),
                fontSize: 25.0,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
              child: Text(
                'Fill up information about yourself',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Lora',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.usernameController,
                  focusNode: _model.usernameFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'User name',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  validator:
                      _model.usernameControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.dobController,
                  focusNode: _model.dobFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Date of birth',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.datetime,
                  validator: _model.dobControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.addController,
                  focusNode: _model.addFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.streetAddress,
                  validator: _model.addControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.phnnumController,
                  focusNode: _model.phnnumFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  validator:
                      _model.phnnumControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.bgController,
                  focusNode: _model.bgFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Blood group',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  validator: _model.bgControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.religionController,
                  focusNode: _model.religionFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Religion',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  validator:
                      _model.religionControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.nidController,
                  focusNode: _model.nidFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'NID number',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF95564A),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEEDFD7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF452D2B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFEEDFD7),
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  validator: _model.nidControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await currentUserReference!.update(createUsersRecordData(
                    displayName: _model.usernameController.text,
                    phoneNumber: _model.phnnumController.text,
                    address: _model.addController.text,
                    nid: int.tryParse(_model.nidController.text),
                    dateofbirth: _model.dobController.text,
                    bloodgrp: _model.bgController.text,
                    religion: _model.religionController.text,
                  ));

                  context.pushNamed('userImage');
                },
                text: 'Next',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF6B2B24),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lora',
                        color: const Color(0xFFE5D6CB),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
