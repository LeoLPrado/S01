use std::io;

fn validar_placa(placa:&str) -> bool{
    let len = placa.len();
    let mut count_upper = 0;
    let mut count_number = 0;

    for c in placa.chars(){
        if c.is_ascii_uppercase(){
            count_upper += 1;
        }
        else if c.is_numeric(){
            count_number += 1;
        }
    }

    if len >= 7 && count_upper >= 4 && count_number >= 2{
        true
    }
    else {
        false
    }
}

fn main() {
    let mut placa = String::new();
    loop {
        println!("Digite a placa: ");
        io::stdin().read_line(&mut placa).expect("Erro ao ler a placa");

        if validar_placa(&placa) {
            println!("Placa cadastrada no sistema!");
            break;
        }
        else{
            println!("Placa invalida. Tente novamente!");
            continue;
        }
    }
}