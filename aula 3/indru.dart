void main() {

}

// exemplo de classes abstrads e herança 

abstract class Pessoa {
  String? _email;
  String? _telefone;
  
  Pessoa({String email = "" , String telefone = ""}){
    this._email = email;
    this._telefone = telefone;
    
  }
  get email => this._email;
  get telefone => this._telefone;
  set email(valor) => this._email = valor;
  set telefone(valor) => this._telefone = valor;
  
  
  
}


