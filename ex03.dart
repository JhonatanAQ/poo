class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano) {
    if (this.dia <= 0 && this.dia > 31) {
      throw ("Dia deve estar entre 1 e 31.");
    }
    if (this.mes <= 0 && this.dia > 12) {
      throw ("Mes deve estar entre 1 e 12.");
    }
    if (this.ano <= 0) {
      throw ("Ano deve ser maior que 0");
    }
  }

  void exibirHorario() {
    String diaString = dia < 10 ? dia.toString().padLeft(2, '0') : dia.toString();
    String mesString = mes < 10 ? mes.toString().padLeft(2, '0') : mes.toString();
    String anoString = ano < 10 ? ano.toString().padLeft(2, '0') : ano.toString();
    
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
