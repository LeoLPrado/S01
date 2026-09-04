package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string){
	tamanho := len(codigo)
	if tamanho == 10 {
		return true, "Código de rastreio registrado no sistema!"
	} else {
		return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."
	}
}

func main() {
	var codigo string

	for {
		fmt.Println("Digite o código de rastreio: ")
		fmt.Scanln(&codigo)

		booleano, msg := ValidarCodigoRastreio(codigo)

		if booleano {
			fmt.Println(msg)
			break
		} else {
			fmt.Println(msg)
		}
	}
}