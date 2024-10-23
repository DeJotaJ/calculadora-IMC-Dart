import 'dart:io';

import 'package:imc_calculadora/classes/Pessoa.dart';
import 'package:imc_calculadora/models/console_utils.dart' as ConsoleUtils;

void main(List<String> arguments) {

  String nome = ConsoleUtils.lerConsole("Digite seu nome:");
  double peso = ConsoleUtils.lerConsoleDouble("Digite seu peso:");
  double altura = ConsoleUtils.lerConsoleDouble("Digite sua altura em metros:");

  try{
    if((nome.trim() == "") || (peso == "") || (altura == "")){
      throw ArgumentError();
    }
  }catch(e){
      print(e);
      exit(0);
  }

  var pessoa = Pessoa(nome, peso, altura);
  double valor = pessoa.calcularIMC(peso, altura);
  print(pessoa.situacao(valor));



}
