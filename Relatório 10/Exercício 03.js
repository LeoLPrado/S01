class FichaDeCriatura {
  constructor(criatura, nivelDePerigo) {
    this.criatura = criatura;
    this.nivelDePerigo = nivelDePerigo;
  }

  descrever() {
    return `Criatura: ${this.criatura} | Nível de perigo: ${this.nivelDePerigo}`;
  }
}

class DiarioMisterioso {
  #fichas = [];

  constructor(numero) {
    this.numero = numero;
  }

  anotar(criatura, nivelDePerigo) {
    const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
    this.#fichas.push(ficha);
  }

  exibirFichas() {
    console.log(`Diário número ${this.numero}`);
    this.#fichas.forEach((ficha) => console.log(ficha.descrever()));
  }
}

class Funcionario {
  constructor(nome, cargo) {
    this.nome = nome;
    this.cargo = cargo;
  }
}

class CabanaDoMisterio {
  #funcionarios = [];

  constructor(dono) {
    this.dono = dono;
  }

  contratar(funcionario) {
    this.#funcionarios.push(funcionario);
  }

  abrirAsPortas() {
    console.log(`Cabana do Mistério aberta! Dono: ${this.dono}`);
    this.#funcionarios.forEach((f) => console.log(`${f.nome} - ${f.cargo}`));
  }
}

// --- MAIN --- //

const diario = new DiarioMisterioso(3);
diario.anotar('Gnomos', 'Médio');
diario.anotar('Multi-Urso', 'Alto');
diario.anotar('Zumbis', 'Baixo');
diario.exibirFichas();

const soos = new Funcionario('Soos', 'Faz-tudo');
const wendy = new Funcionario('Wendy', 'Caixa');

const cabana = new CabanaDoMisterio('Stan');
cabana.contratar(soos);
cabana.contratar(wendy);
cabana.abrirAsPortas();

/*
Nesse exemplo funciona assim:
Composicao entre DiarioMisterioso e FichaDeCriatura.
- As fichas são criadas dentro do método anotar() e ficam guardadas no
array privado #fichas. Elas só existem dentro do diário: nenhum código
de fora cria nem acessa as fichas, e se o diário deixar de existir, as
fichas deixam de existir junto com ele.

Agregacao ocorre entre CabanaDoMisterio e Funcionario.
- Soos e Wendy são criados no main, antes da Cabana, e só depois recebidos
por contratar(). Eles existem independentemente da Cabana: se ela
deixar de existir, os objetos Funcionario continuam existindo no programa.
*/