import java.util.*;

abstract class Morador {
    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void apresentar();
}

class Mago extends Morador {
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Ola, eu sou o mago: " + getNome() + "; E meu feitico é: " + feitico);
    }
}

class Demonio extends Morador {
    public Demonio(String nome){
      super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Ola, eu sou o demonio: " + getNome() + "; E minha funcao é fazer o castelo andar");
    }
}

public class Main {
    public static void main(String[] args) {
      Morador mago = new Mago("Jorge", "Fogo");
      Morador demonio = new Demonio("Capiroto");

      mago.apresentar();
      demonio.apresentar();

      //Morador morador = Morador("Joaozinho");
    }
}