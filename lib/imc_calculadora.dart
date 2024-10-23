double calcularIMC(peso, altura){
    double imc = peso / (altura * altura);
    return imc;
  }

  String situacao(valor){
    
    String situacao = "";
    
    if(valor < 16){
      situacao = "Magreza grave";
    }else if(valor >= 16 && valor < 17){
      situacao = "Magreza Moderada";
    }else if(valor >= 17 && valor < 18.5){
      situacao = "Magreza Leve";
    }else if(valor >= 18.5 && valor < 25){
      situacao = "Saudável";
    }else if(valor >= 25 && valor < 30){
      situacao = "Sobrepeso";
    }else if(valor >= 30 && valor < 35){
      situacao = "Obesidade Grau I";
    }else if(valor >= 35 && valor < 40){
      situacao = "Obesidade Grau II(severa)";
    }else if(valor >= 40){
      situacao = "Obesidade Grau III(mórbida)";
    }else{
      situacao = "Desculpe, ocorreu um erro. Tente novamente";
    } 

    return "IMC: $valor \nSituação: $situacao";
  }
