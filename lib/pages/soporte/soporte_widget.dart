import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'soporte_model.dart';
export 'soporte_model.dart';

class SoporteWidget extends StatefulWidget {
  const SoporteWidget({super.key});

  @override
  _SoporteWidgetState createState() => _SoporteWidgetState();
}

class _SoporteWidgetState extends State<SoporteWidget> {
  late SoporteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SoporteModel());

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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://i.pinimg.com/564x/b0/4b/51/b04b5185ea74824546c3d51f5c4df9fa.jpg',
                    ).image,
                  ),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Color(0x5F000000),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 70.0, 20.0, 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.chevron_left,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 44.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Text(
                              'Tentación - Contacto',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 34.0,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      '¡Nos encantaría escuchar de ti! Ya sea para reservaciones, consultas o comentarios, estamos aquí para atenderte.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: '\n\nDirección:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Quepos, Puntarenas, Costa Rica, 60601.\n\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Teléfono:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const TextSpan(
                                  text: '(+506) 1234 - 5678\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Correo Electrónico:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'contacto@tentacion.com\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Horarios de Atención:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'Lunes a Domingo: 7:00AM - 10:00PM\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Reservaciones:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      'Para reservar tu mesa, llámanos o escríbenos un correo electrónico. ¡Asegúrate de especificar la fecha, hora y número de personas!\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Eventos Especiales o Privados:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      'Si estás interesado en organizar un evento especial o reservar nuestro espacio para un evento privado, contáctanos para más detalles y opciones personalizadas.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Síguenos en Redes Sociales:\n',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      'Facebook: Tentacion Quepos\nInstagram: @tentacionQuepos',
                                  style: TextStyle(),
                                ),
                                const TextSpan(
                                  text:
                                      '\n\n¡Te esperamos en Tentación para ofrecerte una experiencia culinaria inolvidable!',
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
