import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'confirmacion_pago_reservacion_model.dart';
export 'confirmacion_pago_reservacion_model.dart';

class ConfirmacionPagoReservacionWidget extends StatefulWidget {
  const ConfirmacionPagoReservacionWidget({
    super.key,
    required this.nombre,
    required this.fecha,
  });

  final String? nombre;
  final DateTime? fecha;

  @override
  _ConfirmacionPagoReservacionWidgetState createState() =>
      _ConfirmacionPagoReservacionWidgetState();
}

class _ConfirmacionPagoReservacionWidgetState
    extends State<ConfirmacionPagoReservacionWidget> {
  late ConfirmacionPagoReservacionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmacionPagoReservacionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await ReservaMesasRecord.collection
          .doc()
          .set(createReservaMesasRecordData(
            nombre: widget.nombre,
            fecha: widget.fecha,
          ));
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 30.0,
                    borderWidth: 2.0,
                    buttonSize: 44.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Home');
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                child: Icon(
                  Icons.check_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 60.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                'El pago se realizó con éxito',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Urbanist',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 32.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                '₡11.540',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      fontFamily: 'Urbanist',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Text(
                'El pago ha sido realizado con éxito.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32.0, 20.0, 32.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Image.asset(
                          'assets/images/masterCard@2x.png',
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                'Mastercard Con Terminación 4021',
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                '₡11.540',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32.0, 20.0, 32.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Image.network(
                            currentUserPhoto,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                'Reservación a nombre de:',
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                widget.nombre!,
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                'Para la fecha:',
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                valueOrDefault<String>(
                                  dateTimeFormat('d/M h:mm a', widget.fecha),
                                  'null',
                                ),
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Home');
                      },
                      text: 'Voler al Inicio',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).alternate,
                        textStyle: FlutterFlowTheme.of(context).bodyLarge,
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
