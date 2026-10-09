class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print("Ult genérica")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print("HAMMER DOWNNN !!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print("Heroes never die!")
    
    def curar_equipe(self):
        print(f"{self.codinome} está curando a equipe")

if __name__ == "__main__":
    herois: list[HeroiOverwatch] = [
        HeroiOverwatch("Soldado", "Dano"),
        HeroiTanque("Reinhardt", "Tanque"),
        HeroiSuporte("Mercy", "Suporte")
    ]

    for heroi in herois:
        heroi.usar_suprema()

        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()