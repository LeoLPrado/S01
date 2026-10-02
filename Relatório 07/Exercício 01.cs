using System;
using System.Collections.Generic;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
	{
        Nome = nome;
        Povo = povo;
        Posto = posto;
    }

    public void Equipar(string arma)
    {
        Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"Nome: {Nome} - Povo: {Povo} - Posto: {Posto}");

        if (Armamento != "Desarmado") {
            Console.WriteLine($"Armamento: {Armamento}");
        }

        Console.WriteLine();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
		// Usei IA aqui para colocar os parametros (nome, povo, posto)
        var faramir = new CombatenteDeGondor("Faramir", "Gondoriano", "Capitão");
        var beregond = new CombatenteDeGondor("Beregond", "Gondoriano", "Guarda da Cidadela");
        var pippin = new CombatenteDeGondor("Peregrin Took", "Hobbit", "Recruta");

        faramir.Equipar("Arco e espada");
        beregond.Equipar("Lança");
        // pippin continua "Desarmado"

        faramir.ApresentarUnidade();
        beregond.ApresentarUnidade();
        pippin.ApresentarUnidade();

		faramir.Posto = "Major"
		// Erro: HelloWorld.cs(53,5): error CS1002: ; expected
    }
}

