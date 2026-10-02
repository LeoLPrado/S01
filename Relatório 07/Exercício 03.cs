using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; private set; } = "Nenhum";

    public void DefinirFeiticoFavorito(string feitico)
    {
        FeiticoFavorito = feitico;
    }

    public void Abrir()
    {
        Console.WriteLine($"Grimório aberto. Feitiço favorito: {FeiticoFavorito}");
    }
}

public class Companheiro
{
    public string Nome { get; private set; }
    public string Funcao { get; private set; }

    public Companheiro(string nome, string funcao)
    {
        Nome = nome;
        Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"{Nome} - {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; private set; }
    public Grimorio Grimorio { get; private set; }
    private List<Companheiro> grupo = new List<Companheiro>();

    public Maga(string nome)
    {
        Nome = nome;
        Grimorio = new Grimorio(); // composição: criado dentro da Maga
    }

    public void Recrutar(Companheiro c)
    {
        grupo.Add(c); // Agregação: recebido de fora
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"Grupo de {Nome}:");

        foreach (Companheiro c in grupo)
        {
            c.Apresentar();
        }

        Console.WriteLine();
    }
}

class Program
{
    public static void Main(string[] args)
    {
        // Usei IA para preencher os nomes e funções dos companheiros, e o nome da Maga
        // companheiros existem antes da Maga
        var himmel = new Companheiro("Himmel", "Herói");
        var heiter = new Companheiro("Heiter", "Clérigo");

        var frieren = new Maga("Frieren");

        frieren.Recrutar(himmel);
        frieren.Recrutar(heiter);

        frieren.Grimorio.DefinirFeiticoFavorito("Zoltraak");

        frieren.MostrarGrupo();
        frieren.Grimorio.Abrir();
    }
}

/*
 * COMPOSIÇÃO x AGREGAÇÃO neste programa
 *
 * Composição (Maga -> Grimorio): o Grimorio é criado dentro do construtor da
 * Maga (new Grimorio()). Ele nasce com ela e depende dela: ninguém de fora
 * cria o grimório nem o entrega pronto. Se a Maga deixa de existir, o
 * grimório vai junto.
 *
 * Agregação (Maga -> Companheiro): os Companheiros são criados fora da Maga
 * (na Main) e só são recebidos por Recrutar(). Eles já existiam antes de
 * conhece-la e continuam existindo mesmo que a Maga deiex de existir.
 * A Maga apenas guarda uma referência a eles.
 */