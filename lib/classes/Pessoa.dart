class Pessoa{

  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getPeso(){
    return _peso;
  }

  void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(){
    return _altura;
  }

  //Construtor
  Pessoa(String nome, double peso, double altura){
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
  //sobrescrevendo o toString
  @override
  String toString(){
    return {
      "Nome": getNome(),
      "Pesoa": getPeso(),
      "Altura": getAltura(),
    }
    .toString();
  }

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




}