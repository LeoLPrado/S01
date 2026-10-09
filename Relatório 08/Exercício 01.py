class MortoVivo:
    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, qtd:int):
        if qtd <= 10 and qtd >= 0:
            self.__estus = qtd
        else:
            print("Quantidade de Estus inválida!")
    
    def mostrar_status(self):
        print(f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}")

class Clerigo(MortoVivo):
    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        super().mostrar_status()
        print(f"Milagre: {self.milagre}")

if __name__ == "__main__":
    clerigo = Clerigo("Solaire", 500, 5, "Lança de Relâmpago")
    clerigo.mostrar_status()

    clerigo.set_estus(15)
    clerigo.set_estus(10)

    clerigo.mostrar_status()

    print(clerigo.__estus)
    #AttributeError: 'Clerigo' object has no attribute '__estus'.
