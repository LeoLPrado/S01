use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64,redacao: f64) -> f64{
    let NPT: f64 = (prova1 + prova2) / 2.0;

    let PesoTeoria: f64 = 0.6;
    let PesoRedacao: f64 = 0.4;

    let NotaFinal = ((NPT * PesoTeoria) + (redacao * PesoRedacao)) / (PesoTeoria + PesoRedacao);

    if NotaFinal >= 60.0{
        println!("Parabens! Candidato aprovado no processo seletivo.");
    }
    else{
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }
    
    return NotaFinal;
}


fn main(){
    let mut nota1 = String::new();
    let mut nota2 = String::new();
    let mut nota3 = String::new();

    println!("Digite a nota da Prova Teorica 1: ");
    io::stdin().read_line(&mut nota1).expect("Erro ao ler a nota da Prova Teorica 1");
    let NP1: f64 = nota1.trim().parse().expect("Digite um numero valido");

    println!("Digite a nota da Prova Teorica 2: ");
    io::stdin().read_line(&mut nota2).expect("Erro ao ler a nota da Prova Teorica 2");
    let NP2: f64 = nota2.trim().parse().expect("Digite um numero valido");

    println!("Digite a nota da Redacao: ");
    io::stdin().read_line(&mut nota3).expect("Erro ao ler a Nota da Redacao");
    let NP3: f64 = nota3.trim().parse().expect("Digite um numero valido");

    let result = calcular_pontuacao(NP1, NP2, NP3);

    println!("Pontuacao Final: {}", result)
}