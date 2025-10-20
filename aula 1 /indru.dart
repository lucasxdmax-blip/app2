//comentario de linha
/*
cuyjkhkj
*/

//função elementar
void main(){
  //print, invia um texto para o console
  print("SEM TITULO!");
  print("___aula 1 dart___");
  
  //var = declaração de varival generica
  var nome = "Vasco";
  var sobrenome = "Gama";
  
   //interpoloção de textos (String)
   print ("$nome $sobrenome");
  
  //constantes: const e final
  const double num_pi = 3.1415926535;
  final DateTime data = DateTime.now();
  
  print("PI = $num_pi");
  print("Data = $data");
  
  //uso do tipo de dado dynaminc
  
 dynamic valor = "um texto...";
  print(valor is String);
  
  valor = 10;
  print(valor is int);
  
 //chamado função externa 
  print("area do retangulo 5,6 x 7,4 ");
  print(areaRetangulo(5.6 , 7.4));
  
  print("area do trapezio: ");
  print(areaTrapezio(bMaior: 4.3 ,bMenor: 5.7,a: 3.4));
  
  print("bhaskara:");
  print(areaBhaskara (4 , 6 , 7) );
}


//funçãos

double areaRetangulo (double b,double a) {
 return b * a;
  
  
  
}


double areaTrapezio({
  double bMenor = 0 , 
  double bMaior = 0, 
  double a = 0
  }){
  return ((bMaior + bMenor) * a) /2;
  
  
  
}


double areaBhaskara (a ,b ,c) {
  return (a * b);
  
}
