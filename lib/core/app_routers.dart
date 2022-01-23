import 'package:flutter/material.dart';

import 'package:bytebank/modules/splash/splash.dart';
import 'package:bytebank/modules/lista_transferencias/lista_transferencias.dart';
import 'package:bytebank/modules/formulario_transferencia/formulario_transferencia.dart';

class AppRouters {
  static final String initialRoute = "/splash";

  static final routers = <String, WidgetBuilder>{
    "/splash": (BuildContext context) => Splash(),
    "/lista": (BuildContext context) =>
        ListaTransferencias(title: "Transferências"),
    "/formulario": (BuildContext context) =>
        FormularioTransferencia(title: "Criando Transferência")
  };
}
