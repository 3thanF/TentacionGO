import '/flutter_flow/flutter_flow_util.dart';
import 'marcar_alergias_widget.dart' show MarcarAlergiasWidget;
import 'package:flutter/material.dart';

class MarcarAlergiasModel extends FlutterFlowModel<MarcarAlergiasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtAlergia widget.
  FocusNode? txtAlergiaFocusNode;
  TextEditingController? txtAlergiaController;
  String? Function(BuildContext, String?)? txtAlergiaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtAlergiaFocusNode?.dispose();
    txtAlergiaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
