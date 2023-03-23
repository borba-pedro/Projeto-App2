class DadosPessoas{
  String? nome;
  int? idade;
  double? altura;
  double? peso;
  String? genero;

  DadosPessoas({this.nome, this.idade, this.altura, this.peso, this.genero});

  double calcular() {
    if(this.genero == "Masculino") {
      double resultado = (13.75 * altura!) + ( 5 * peso!) - (6.76 * idade!) + 66.5 ; 
      return resultado; 
    } else {
      double resultado = (9.56 * peso!) + (1.85 * altura!) - (4.68 * idade!) + 66.5; 
      return resultado;
    }
  }
  
  @override
  String toString() {
    return "Nome: $nome\nIdade: $idade\nAltura: $altura\nPeso: $peso\nGênero: $genero";
  }
}