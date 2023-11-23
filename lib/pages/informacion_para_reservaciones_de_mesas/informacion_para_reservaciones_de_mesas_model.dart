import '/flutter_flow/flutter_flow_util.dart';
import 'informacion_para_reservaciones_de_mesas_widget.dart'
    show InformacionParaReservacionesDeMesasWidget;
import 'package:flutter/material.dart';

class InformacionParaReservacionesDeMesasModel
    extends FlutterFlowModel<InformacionParaReservacionesDeMesasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
