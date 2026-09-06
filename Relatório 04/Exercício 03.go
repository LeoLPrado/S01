package main
import "fmt"

func gerarEscalaPlantao(n int) {
	fmt.Println("--- Escala de Plantão Técnico ---")
	i := 1
	aux := i
	for i = 1; i <= n; i++ {
		fmt.Println("Plantão", i, ": Dia", aux, "do mês")
		aux = aux + 4
    }
}

func main() {
	var n int
	fmt.Println("Digite a quantidade de plantões necessários:")
	fmt.Scanln(&n)

	gerarEscalaPlantao(n)
}