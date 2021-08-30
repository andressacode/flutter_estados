import 'package:flutter/material.dart';
import 'package:flutter_estados/components/editor.dart';

const _tituloAppBar = 'Receber depósito';
const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'Valor';
const _textoBotaoConfirmar = 'Contirmar';

class FormularioDeposito extends StatelessWidget{

  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              dica: _dicaCampoValor,
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () => _criaDeposito(context),
            ),
          ],
        ),
      ),
    );
  }
  _criaDeposito(context) {
    Navigator.pop(context);
  }
}