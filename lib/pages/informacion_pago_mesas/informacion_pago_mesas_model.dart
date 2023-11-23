import '/flutter_flow/flutter_flow_util.dart';
import 'informacion_pago_mesas_widget.dart' show InformacionPagoMesasWidget;
import 'package:flutter/material.dart';

class InformacionPagoMesasModel
    extends FlutterFlowModel<InformacionPagoMesasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
