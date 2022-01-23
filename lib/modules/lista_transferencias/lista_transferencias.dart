import 'package:flutter/material.dart';

import 'package:bytebank/modules/lista_transferencias/widgets/item_transferencia.dart';
import 'package:bytebank/shared/models/transferencia.dart';

class ListaTransferencias extends StatefulWidget {
  final String title;
  final List<Transferencia> _transferencias = [];

  ListaTransferencias({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ListaTransferenciasState();
}

class ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("/formulario").then(
              (transferenciaRecebida) =>
                  _atualiza(transferenciaRecebida as Transferencia));
        },
      ),
    );
  }

  void _atualiza(Transferencia? transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }
}
