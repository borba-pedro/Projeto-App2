class DadosPessoas{
  String? nome;
  int? idade;
  double? altura;
  double? peso;
  String? genero;

  DadosPessoas({this.nome, this.idade, this.altura, this.peso, this.genero});

  double calcular() {
    double resultado = (13.75 * altura!) + ( 5 * peso!) - (6.76 * idade!) + 66.5 ; 
    return resultado;
  }

}