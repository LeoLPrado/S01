use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool{
        let mut diff: i32;
        diff = numero_secreto - palpite;

        if diff < 0{
            diff = diff * - 1;
        }

        if diff <= 5 {
            println!("Parabens, voce acertou o alvo!");
            println!("Voce ficou a apenas {} unidade(s) do numero secreto ({}).", diff, numero_secreto);
            return true;
        }
        else {
            println!("Voce passou longe! Tente novamente.");
            return false;
        }
}

fn main(){
    let numero_secreto: i32 = 13;

    loop {
        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).expect("Erro ao ler o palpite");
        let palpite: i32 = entrada.trim().parse().expect("Digite um numero valido");

        if acertou_o_alvo(numero_secreto, palpite){
            break;
        }
    }
}