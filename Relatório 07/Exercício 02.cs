using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
	{
        Especie = especie;
		Nivel = nivel;
    }

	public virtual void Atacar()
	{
		Console.WriteLine("Ataque Generico");
	}
}

public class TipoPlanta : Pokemon
{
	public TipoPlanta(string especie, int nivel) : base(especie, nivel) { }
 
    public override void Atacar()
    {
        Console.WriteLine($"Ataque de Planta");
	}
}

public class TipoEletrico : Pokemon
{
	public TipoEletrico(string especie, int nivel) : base(especie, nivel) { }
 
    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"Ataque Eletrico");
    }
}

class Program
{
    public static void Main(string[] args)
    {	
		// Usei IA aqui para preencher os nomes dos pokemons e seus respectivos tipos
		List<Pokemon> batalha = new List<Pokemon>
        {
            new Pokemon("Eevee", 10),
            new TipoPlanta("Bulbasaur", 12),
            new TipoEletrico("Pikachu", 15)
        };
 
        foreach (Pokemon p in batalha)
        {
            p.Atacar();
            Console.WriteLine();
        }
    }
}

