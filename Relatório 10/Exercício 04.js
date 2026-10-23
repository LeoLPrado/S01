class UsuarioDeNen {
  constructor(nome) {
    this.nome = nome;
  }

  atacar(alvo) {
    console.log(`${this.nome} lança um ataque de aura contra ${alvo.nome}!`);
  }
}

class Intensificador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} reforça o punho com aura e acerta um soco em ${alvo.nome}!`);
  }
}

class Transmutador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} transforma a aura em eletricidade e descarrega em ${alvo.nome}!`);
  }
}

class Materializador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} materializa uma corrente de aura e prende ${alvo.nome}!`);
  }
}

class Aranha {
  constructor(nome, numero) {
    this.nome = nome;
    this.numero = numero;
  }
}

class TrupeFantasma {
  #aranhas;

  constructor(cidade, aranhas = []) {
    this.cidade = cidade;
    this.#aranhas = aranhas;
  }

  revelarAranhas() {
    console.log(`Trupe Fantasma avistada em ${this.cidade}`);
    this.#aranhas.forEach((a) => console.log(`Nº ${a.numero} - ${a.nome}`));
  }

  buscarAranha(numero) {
    return this.#aranhas.find((a) => a.numero === numero);
  }
}

// --- MAIN --- /
// Usei IA para preencher os consolog log (dos metodos dentro das classes) e os objetos pois nao conheco essa serie

const chrollo = new Aranha('Chrollo', 0);
const feitan = new Aranha('Feitan', 2);

const trupe = new TrupeFantasma('Yorknew', [chrollo, feitan]);
trupe.revelarAranhas();

const alvo = trupe.buscarAranha(2);

const hunters = [
  new Intensificador('Gon'),
  new Transmutador('Killua'),
  new Materializador('Kurapika'),
];

hunters.forEach((hunter) => hunter.atacar(alvo));