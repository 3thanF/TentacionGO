import '/flutter_flow/flutter_flow_util.dart';
import 'tropical_yogurt_parfait_widget.dart' show TropicalYogurtParfaitWidget;
import 'package:flutter/material.dart';

class TropicalYogurtParfaitModel
    extends FlutterFlowModel<TropicalYogurtParfaitWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoController;
  String? Function(BuildContext, String?)? txtMontoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtMontoFocusNode?.dispose();
    txtMontoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
