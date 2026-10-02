using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; private set; }
    public string Origem { get; private set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        Nome = nome;
    }

    public void DefinirOrigem(string origem)
    {
        Origem = origem;
    }

    public virtual void Manifestar()
    {
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Minha Origem é: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        Console.WriteLine($"Sou o {Nome}");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine($"Sou o {Nome}");
    }
}

public class Pesquisador
{
    public string Nome { get; private set; }
    private List<EntidadeCosmica> catalogo = new List<EntidadeCosmica>();

    public Pesquisador(string nome)
    {
        Nome = nome;
    }

    public void Catalogar(EntidadeCosmica e)
    {
        catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"Catálogo de {Nome}:");

        foreach (EntidadeCosmica e in catalogo)
        {
            e.Manifestar();
        }
    }
}

class Program
{
    public static void Main(string[] args)
    {
		//Novamente use IA para me dar ideia de nomes nessa parte de variaveis e parametros
        var cthulhu = new EntidadeCosmica("Cthulhu");
        var profundo = new Profundo("Pai Dagon");
        var migo = new MiGo("Fungo de Yuggoth");

        cthulhu.DefinirOrigem("R'lyeh");
        migo.DefinirOrigem("Yuggoth");

        var pesquisador = new Pesquisador("Leo");

        pesquisador.Catalogar(cthulhu);
        pesquisador.Catalogar(profundo);
        pesquisador.Catalogar(migo);

        pesquisador.LerCatalogo();
    }
}