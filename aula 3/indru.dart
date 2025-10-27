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
  String? get email => this._email;
  String? get telefone => this._telefone;
    set email(String? valor) => this._email = valor;
    set telefone(String? valor) => this._telefone = valor;
  
  String toString() {
    
    return "Email: ${this._email} \n Telefone: ${this._telefone} \n";
  }
  
  
  
}


