import 'dart:convert';
import 'dart:io';

double lerConsoleDouble(String texto){
  var numero = double.parse((lerConsole(texto)));
  return numero;
}

String lerConsole(String texto){
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}