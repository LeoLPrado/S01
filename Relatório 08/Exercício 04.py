from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, cyberdeck: Cyberdeck):
        self.nome = nome
        self.cyberdeck = cyberdeck

    def executar_invasao(self):
        print(f"{self.nome} usa o cyberdeck {self.cyberdeck.modelo} para quebrar o ICE do servidor!")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: int):
        self.codigo = codigo
    
    def executar_invasao(self):
        print(f"O drone de codigo {self.codigo} está interceptando o sinal da rede")

class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"\nCélula hacker {self.nome} iniciando ataque!")

        for membro in self.membros:
            membro.executar_invasao()

if __name__ == "__main__":
    netrunner = OperadorNetrunner("Lucy", Cyberdeck("Arasaka Mk.5"))
    drone = DroneDeVigilancia(67)

    membros: list[IUnidadeDeRede] = [netrunner, drone]

    celula = CelulaHacker("Afterlife", membros)
    celula.iniciar_ataque()

    Unidade = IUnidadeDeRede()
    #TypeError: Can't instantiate abstract class IUnidadeDeRede without an implementation for abstract method 'executar_invasao'