class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano
    
    def invocar(self):
        print(f"Nome: {self.nome} | Arcano: {self.arcano}")
    
class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome
    
class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado:Aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio: str):
        print(f"{self.codinome} invadiu o Palácio")

        self.persona.invocar()
        
        print("\nEquipe:")
        for aliado in self._equipe:
            print(f"{aliado.nome} | {aliado.codinome}")


if __name__ == "__main__":
    aliado1 = Aliado("Ryuji Sakamoto", "Skull")
    aliado2 = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")

    joker.recrutar(aliado1)
    joker.recrutar(aliado2)

    joker.infiltrar("")

    # Agregação: o objeto recebe algo que já existe e que pode continuar existindo sem ele (Composicao mais fraca).
    # Composição: o objeto é responsável por criar e possuir uma parte que, conceitualmente, depende dele.