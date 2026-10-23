class Pistola {
  constructor(modelo) {
    this.modelo = modelo;
  }
}

class AgenteProtocolo {
  #pistola;

  constructor(codinome, modeloDaPistola) {
    this.codinome = codinome;
    this.#pistola = new Pistola(modeloDaPistola);
  }

  usarHabilidade() {
    throw new Error('implementacao mais abaixo');
  }

  entrarEmCombate() {
    console.log(
      `${this.codinome} entra em combate com a ${this.#pistola.modelo}. Habilidade: ${this.usarHabilidade()}`
    );
  }
}

class Controlador extends AgenteProtocolo {
  usarHabilidade() {
    return 'lança uma cortina de fumaça para bloquear a visão';
  }
}

class Iniciador extends AgenteProtocolo {
  usarHabilidade() {
    return 'lança um drone que revela a posição dos inimigos';
  }
}

class Duelista extends AgenteProtocolo {
  usarHabilidade() {
    return 'avança com um dash para entrar no confronto';
  }
}

class Esquadrao {
  #agentes;

  constructor(nome, agentes) {
    this.nome = nome;
    this.#agentes = agentes;
  }

  iniciarPartida() {
    console.log(`Esquadrão ${this.nome} iniciando a partida!`);
    this.#agentes.forEach((agente) => agente.entrarEmCombate());
  }

  listarControladores() {
    return this.#agentes.filter((agente) => agente instanceof Controlador);
  }
}

// --- MAIN --- //
const omen = new Controlador('Omen', 'Ghost');
const brimstone = new Controlador('Brimstone', 'Sheriff');
const sova = new Iniciador('Sova', 'Classic');
const jett = new Duelista('Jett', 'Frenzy');

const esquadrao = new Esquadrao('Alpha', [omen, brimstone, sova, jett]);

esquadrao.iniciarPartida();

console.log('Controladores do esquadrão:');
esquadrao.listarControladores().forEach((agente) => console.log(agente.codinome));

const agenteGenerico = new AgenteProtocolo('Genérico', 'Classic');
//agenteGenerico.entrarEmCombate();