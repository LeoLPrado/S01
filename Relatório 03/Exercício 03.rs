use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32){
    println!("--- Numeros no intervalo terminados em {} ---", digito);
    for i in limite_inferior..=limite_superior{
        if i % 10 == digito {
            println!("{}", i);
        }
    }
}

fn main(){
    let mut entrada_final = String::new();
    let mut entrada_inferior = String::new();
    let mut entrada_superior = String::new();

    println!("Digite o digito final desejado (0 a 9): ");
    io::stdin().read_line(&mut entrada_final).expect("Erro ao ler o digito final");
    let digito_final: i32 = entrada_final.trim().parse().expect("Digite um numero valido");

    println!("Digite o limite inferior: ");
    io::stdin().read_line(&mut entrada_inferior).expect("Erro ao ler o digito final");
    let inferior: i32 = entrada_inferior.trim().parse().expect("Digite um numero valido");

    println!("Digite o limite superior: ");
    io::stdin().read_line(&mut entrada_superior).expect("Erro ao ler o digito final");
    let superior: i32 = entrada_superior.trim().parse().expect("Digite um numero valido");

    imprimir_terminados_em(digito_final, inferior, superior);
}