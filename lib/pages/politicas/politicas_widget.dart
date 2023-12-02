import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'politicas_model.dart';
export 'politicas_model.dart';

class PoliticasWidget extends StatefulWidget {
  const PoliticasWidget({super.key});

  @override
  _PoliticasWidgetState createState() => _PoliticasWidgetState();
}

class _PoliticasWidgetState extends State<PoliticasWidget> {
  late PoliticasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticasModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Políticas del restaurante',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿Cuales son las políticas de Tentación?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Reservas y Capacidad de Clientes:\n',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text:
                                    '\nLas reservas se recomiendan y pueden hacerse por teléfono o en línea.\n\nLas mesas se asignan por orden de llegada, salvo para reservas confirmadas.\n\nLa capacidad máxima del restaurante se ajusta a las normativas locales de seguridad y salud.',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              TextSpan(
                                text: '\n\nPolítica de Higiene y Salud:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nSe mantiene un estricto protocolo de limpieza en todas las áreas del restaurante.\n\nTodo el personal debe cumplir con las normas de higiene y salud establecidas.\n\nSe solicita a los clientes que no asistan si presentan síntomas de enfermedades contagiosas.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nCódigo de Vestimenta:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nSe recomienda un código de vestimenta casual elegante.\n\nSe reserva el derecho de admisión por vestimenta inapropiada.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nPolítica de Alimentos y Bebidas:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nNo se permite la entrada de alimentos o bebidas externas.\n\nSe ofrece una amplia variedad de opciones para atender a clientes con restricciones alimentarias, previa solicitud.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nAtención al cliente:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nSe espera que todo el personal brinde un servicio atento y profesional.\n\nLos comentarios y sugerencias de los clientes son bienvenidos y pueden hacerse en persona o a través de nuestro sitio web.\n',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\nPolítica de Cancelación y No Show:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nPara cancelaciones, se solicita notificación con al menos 24 horas de anticipación.\n\nLas reservas no reclamadas (no show) podrían estar sujetas a cargos.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nPago y propinas:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nSe aceptan diversas formas de pago, incluyendo efectivo y tarjetas de crédito.\n\nLas propinas no están incluidas en la cuenta y son a discreción del cliente.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nHorarios de funcionamiento:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nEl restaurante opera de martes a domingo, de 9:00 AM a 10:00 PM.\nLos lunes el restaurante permanece cerrado por mantenimiento.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nEventos Especiales y Privacidad:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nEl restaurante ofrece la posibilidad de reservar para eventos especiales.\n\n\nSe respeta la privacidad de todos los clientes y se pide lo mismo a cambio.',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '\n\nCumplimiento de las Leyes Locales:',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    '\n\nEl restaurante cumple con todas las leyes y regulaciones locales de Quepos y Costa Rica.',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}