class Carro {
  static contador: number = 0;
  marca: string;

  constructor(marca: string) {
    Carro.contador += 1;
    this.marca = marca;
  }
}

let carro1 = new Carro("Fiat");
let carro2 = new Carro("Chevrolet");
let carro3 = new Carro("Ford");

console.log(Carro.contador);
// CA
// RA
// LHO
