package main
import "fmt"

func main() {
	var venda1 int
	var venda2 int
	var venda3 int

	fmt.Println("Digite as vendas do 1º trimestre: ")
	fmt.Scanln(&venda1)
	fmt.Println("Digite as vendas do 2º trimestre: ")
	fmt.Scanln(&venda2)
	fmt.Println("Digite as vendas do 3º trimestre: ")
	fmt.Scanln(&venda3)

	soma_total := venda1 + venda2 + venda3
	fmt.Println("Total de vendas:", soma_total, "unidades")

	if soma_total < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		switch {
		case soma_total >= 250:
			fmt.Println("Classificação: Categoria Top Seller")
		case soma_total <= 249 && soma_total >= 180:
			fmt.Println("Classificação: Categoria Senior")
		default:
			fmt.Println("Classificação: Categoria Pleno")
		}
	}
}