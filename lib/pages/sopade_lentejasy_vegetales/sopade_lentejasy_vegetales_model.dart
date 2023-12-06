import '/flutter_flow/flutter_flow_util.dart';
import 'sopade_lentejasy_vegetales_widget.dart'
    show SopadeLentejasyVegetalesWidget;
import 'package:flutter/material.dart';

class SopadeLentejasyVegetalesModel
    extends FlutterFlowModel<SopadeLentejasyVegetalesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
