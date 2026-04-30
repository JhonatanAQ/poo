class Data {
  int _dia;
  int _mes;
  int _ano;

  Data(this._dia, this._mes, this._ano) {
    if (this._dia <= 0 && this._dia > 31) {
      throw ("Dia deve estar entre 1 e 31.");
    }
    if (this._mes <= 0 && this._mes > 12) {
      throw ("Mes deve estar entre 1 e 12.");
    }
    if (this._ano <= 0) {
      throw ("Ano deve ser maior que 0");
    }
  }

  void exibirHorario() {
    String diaString = _dia < 10 ? _dia.toString().padLeft(2, '0') : _dia.toString();
    String mesString = _mes < 10 ? _mes.toString().padLeft(2, '0') : _mes.toString();
    String anoString = _ano < 10 ? _ano.toString().padLeft(2, '0') : _ano.toString();
    
    print("\n$diaString/ $mesString/ $anoString ");
  }
}

void main() {
  Data d1 = Data(01, 04, 2010);
  d1.exibirHorario();
  
  Data d2 = Data(12, 01, 2016);
  d2.exibirHorario();
  
  Data d3 = Data(24, 11, 1976); 
  d3.exibirHorario();

}
